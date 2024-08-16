import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  bool isFullSun = true;
  bool isDayMood = true;
  Duration duration = const Duration(seconds: 3);
  @override
  Widget build(BuildContext context) {
    List<Color> lightBgColors = [
      const Color(0xFF8C2480),
      const Color(0xFFCE587D),
      const Color(0xFFFF9485),
      if (isFullSun) const Color(0xFFFF9D80),
    ];
    var darkBgColors = const [
      Color(0xFF0D1441),
      Color(0xFF283584),
      Color(0xFF376AB2),
    ];
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    Future<void> changeMode(int value) async {
      if (value == 0) {
        setState(() {
          isDayMood = true;
        });
        await Future.delayed(
          const Duration(milliseconds: 400),
        );
        setState(() {
          isFullSun = true;
        });
      } else {
        setState(() {
          isDayMood = false;
        });
        await Future.delayed(const Duration(milliseconds: 400));
        setState(() {
          isFullSun = false;
        });
      }
    }

    return Scaffold(
      body: AnimatedContainer(
        duration: duration,
        curve: Curves.easeInOut,
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isFullSun ? lightBgColors : darkBgColors,
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              left: 0,
              right: 0,
              bottom: !isFullSun ? -150 : 150,
              duration: duration,
              child: SvgPicture.asset('assets/Sun.svg'),
            ),
            Positioned(
              bottom: -75,
              right: 0,
              left: 0,
              child: Image.asset(
                'assets/land_tree_light.png',
                height: height * 0.60,
                fit: BoxFit.fitHeight,
              ),
            ),
            Positioned(
              top: 60,
              left: 30,
              child: Container(
                width: width * 0.85,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(12)),
                child: DefaultTabController(
                  length: 2,
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    onTap: ((value) async {
                      await changeMode(value);
                    }),
                    labelStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.black,
                    tabs: const [
                      Tab(text: 'Morning Login'),
                      Tab(text: 'Night Login'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

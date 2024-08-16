import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class AfterSplashPage extends StatefulWidget {
  const AfterSplashPage({super.key});

  @override
  State<AfterSplashPage> createState() => _AfterSplashPageState();
}

class _AfterSplashPageState extends State<AfterSplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    context.router.replace(const OnBoardingRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AssetConstants.lalafoTextLogo.png,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: LinearProgressIndicator(
                color: ColorConstants.grey,
                backgroundColor: ColorConstants.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

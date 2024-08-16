import 'package:capitals/themes/app_colors.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> name = [
    'Алексей',
    'Екатерина',
    'Михаил',
    'Ольга',
    'Андрей',
    'Наталья',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Сталица Мира',
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.voice_chat,
                    color: AppColors.orange,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.settings,
                    color: AppColors.blue,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.more_vert,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        body: Column(
          children: [
            const Divider(
              indent: 20,
              endIndent: 20,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: name.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: ((context, index) {
                    return Card(
                      color: AppColors.white,
                      child: Text(name[index]),
                    );
                  })),
            )
          ],
        ),
      ),
    );
  }
}

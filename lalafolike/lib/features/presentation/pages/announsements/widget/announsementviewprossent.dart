import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class Announsementviewprossent extends StatelessWidget {
  const Announsementviewprossent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: AppText(
              title: 'Объявление заполнено на 61%',
              textType: TextType.promocode,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: LinearProgressIndicator(
              value: 0.61,
              backgroundColor: Colors.grey,
              color: Color.fromARGB(255, 242, 191, 89),
            ),
          ),
          AppText(
              title: 'Чем больше информации, тем быстрее продажа!',
              textType: TextType.promocode,
              color: Colors.grey),
        ],
      ),
    );
  }
}

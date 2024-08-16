import 'package:education/config/constants/app_color.dart';
import 'package:flutter/material.dart';

class CorrectIncorrectCard extends StatelessWidget {
  const CorrectIncorrectCard({
    super.key,
    required this.kataJooptor,
    required this.tuuraJooptor,
  });

  final int kataJooptor;
  final int tuuraJooptor;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '$kataJooptor',
              style: const TextStyle(
                  color: AppColors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  '|',
                  style: TextStyle(fontSize: 17),
                )),
            Text(
              '$tuuraJooptor',
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

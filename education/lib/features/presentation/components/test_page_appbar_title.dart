import 'package:education/config/constants/app_color.dart';
import 'package:flutter/material.dart';

class TestPageAppBarTitle extends StatelessWidget {
  const TestPageAppBarTitle(
      {Key? key, required this.tuuraJooptor, required this.kataJooptor})
      : super(key: key);
  final int tuuraJooptor;
  final int kataJooptor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
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
        ),
        const SizedBox(
          width: 5,
        ),
      ],
    );
  }
}

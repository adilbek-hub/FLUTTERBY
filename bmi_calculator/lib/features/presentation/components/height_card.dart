import 'package:bmi_calculator/features/presentation/pages/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeightCard extends StatelessWidget {
  HeightCard(
      {super.key,
      required this.text,
      required this.personHeight,
      required this.sm,
      required this.height,
      required this.onChanged});
  final String text;
  final int personHeight;
  final String sm;
  final int height;
  void Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 176,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text.toUpperCase(),
            style: AppTextStyles.maleTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '$personHeight',
                style: AppTextStyles.smTextStyle,
              ),
              Text(
                sm,
                style: AppTextStyles.maleTextStyle,
              ),
            ],
          ),
          SizedBox(
            width: double.maxFinite,
            child: CupertinoSlider(
              min: 0.0,
              max: 300.0,
              value: height.toDouble(),
              activeColor: CupertinoColors.activeGreen,
              thumbColor: CupertinoColors.systemPink,
              divisions: 10,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}

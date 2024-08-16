import 'package:bmi_calculator/features/presentation/pages/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.iconRemove,
    required this.iconAdd,
    this.remove,
    this.add,
  });
  final String text;
  final int san;
  final IconData iconRemove;
  final IconData iconAdd;
  final void Function()? remove;
  final void Function()? add;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 177,
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
          Text(
            '$san',
            style: AppTextStyles.sanTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: remove,
                icon: Icon(
                  iconRemove,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: add,
                icon: Icon(
                  iconAdd,
                  size: 45,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

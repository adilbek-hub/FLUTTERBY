import 'package:bmi_calculator/features/presentation/pages/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class MaleFemaleCard extends StatelessWidget {
  const MaleFemaleCard({
    super.key,
    this.text,
    this.icon,
    required this.isFemale,
  });
  final IconData? icon;
  final String? text;
  final bool isFemale;

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
          Icon(
            icon,
            color: isFemale ? Colors.white : Colors.grey,
            size: 70,
          ),
          Text(
            text ?? '',
            style: AppTextStyles.maleTextStyle,
          ),
        ],
      ),
    );
  }
}

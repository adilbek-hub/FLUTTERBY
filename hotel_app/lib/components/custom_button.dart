import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.text = '',
    this.onTap,
  }) : super(key: key);
  final String? text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: AppColors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text ?? '',
            style: AppTextStyles.nullText,
          ),
        ),
      ),
    );
  }
}

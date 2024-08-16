import 'package:flutter/material.dart';
import '../../constants/constants_export.dart';

class ChooseNumberButton extends StatelessWidget {
  const ChooseNumberButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          AppTexts.chooseNumber,
          style: AppTextStyles.chooseNumberStyle,
        ),
      ),
    );
  }
}

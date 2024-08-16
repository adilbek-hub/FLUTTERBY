import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';

class SettingText extends StatelessWidget {
  const SettingText({
    super.key,
    required this.text,
    this.onTap,
  });
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text),
              const Icon(
                Icons.chevron_right,
                color: ColorConstants.grey,
                size: 22,
              ),
            ],
          ),
        ),
        const Divider(
          color: ColorConstants.grey,
          thickness: 0.5,
        ),
      ],
    );
  }
}

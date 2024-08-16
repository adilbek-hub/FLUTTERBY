import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';

class OutlinedTap extends StatelessWidget {
  const OutlinedTap({
    required this.text,
    this.color = ColorConstants.grey,
    super.key,
  });
  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          side: const BorderSide(
            color: ColorConstants.grey,
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            AppText(
              title: text,
              textType: TextType.body,
            ),
            Icon(
              Icons.keyboard_arrow_down_rounded,
              color: color,
            ),
          ],
        ));
  }
}

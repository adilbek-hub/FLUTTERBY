import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';
import 'package:svg_flutter/svg_flutter.dart';

class Essentials extends StatelessWidget {
  const Essentials({
    Key? key,
    required this.assetName,
    required this.text1,
    required this.text2,
    required this.onPressed,
  }) : super(key: key);
  final String assetName;
  final String text1;
  final String text2;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Row(
        children: [
          SvgPicture.asset(
            assetName,
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1,
                style: AppTextStyles.text1Style,
              ),
              Text(
                text2,
                style: AppTextStyles.text2Style,
              )
            ],
          ),
        ],
      ),
      IconButton(
        onPressed: onPressed,
        icon: const Icon(
          CupertinoIcons.forward,
        ),
      ),
    ]);
  }
}

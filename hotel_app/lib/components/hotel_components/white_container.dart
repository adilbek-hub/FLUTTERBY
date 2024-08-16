import 'package:flutter/material.dart';
import 'package:hotel_app/constants/app_texts.dart';
import 'essentials.dart';

class WhiteContainer extends StatelessWidget {
  const WhiteContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xffFBFBFC),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Essentials(
            assetName: 'assets/emoji-happy.svg',
            text1: AppTexts.udobstva,
            text2: AppTexts.samoeNeobhodimoe,
            onPressed: () {},
          ),
          const Divider(
            indent: 40,
            endIndent: 16,
          ),
          Essentials(
            assetName: 'assets/tick-square.svg',
            text1: AppTexts.udobstva,
            text2: AppTexts.samoeNeobhodimoe,
            onPressed: () {},
          ),
          const Divider(
            indent: 40,
            endIndent: 16,
          ),
          Essentials(
            assetName: 'assets/close-square.svg',
            text1: AppTexts.udobstva,
            text2: AppTexts.samoeNeobhodimoe,
            onPressed: () {},
          ),
          const Divider(
            indent: 40,
            endIndent: 16,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class CardCategoryText extends StatelessWidget {
  const CardCategoryText({
    super.key,
    required this.subCategoryName,
  });

  final String subCategoryName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(15),
            ),
            child: AppText(
              title: subCategoryName,
              textType: TextType.promocode,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class CategoriesTextsCart extends StatelessWidget {
  const CategoriesTextsCart({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 7,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: AppText(
        title: categoryName,
        textType: TextType.subtitle,
        color: Colors.white,
      ),
    );
  }
}

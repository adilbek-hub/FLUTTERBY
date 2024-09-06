import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/media.dart';

class CategoriesImagesCart extends StatelessWidget {
  const CategoriesImagesCart({super.key, required this.selectedMedias});
  final Media selectedMedias;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(color: Colors.grey[350], child: selectedMedias.widget),
    );
  }
}

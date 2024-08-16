import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';

class FlatRent extends StatelessWidget {
  const FlatRent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: flats.length,
        itemBuilder: (context, index) {
          final flat = flats[index];
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 80,
                  decoration: BoxDecoration(
                    color: ColorConstants.grey.withOpacity(0.2),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      flat.imageUrl ?? '',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  flat.title ?? '',
                  style: TextStyle(
                    color: getThemeModeColor.brighnessTheme(context),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class FlatModel {
  final String? title;

  final String? imageUrl;

  FlatModel(this.title, this.imageUrl);
}

List<FlatModel> flats = [
  FlatModel('До 20 тыс сом', AssetConstants.flat.png),
  FlatModel('Кредит,\nрассрочка', AssetConstants.flat.png),
  FlatModel('Ремонт', AssetConstants.flat.png),
  FlatModel('Квартира', AssetConstants.flat.png),
  FlatModel('Квартира', AssetConstants.flat.png),
];

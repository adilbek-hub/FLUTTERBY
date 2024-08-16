import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class Banners extends StatelessWidget {
  const Banners({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 90,
      color: ColorConstants.grey.withOpacity(0.2),
      child: DarkerImage(
        imageUrl: AssetConstants.banner.webp,
        darkenValue: 0.2,
      ),
    );
  }
}

class DarkerImage extends StatelessWidget {
  final String imageUrl;
  final double darkenValue;

  const DarkerImage({
    super.key,
    required this.imageUrl,
    required this.darkenValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(darkenValue),
            BlendMode.darken,
          ),
        ),
      ),
    );
  }
}

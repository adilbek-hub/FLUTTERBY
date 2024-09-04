import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/vip_view.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.price,
    this.discountPrice,
    this.vacation,
    this.description,
    this.image,
  });

  final int? price;
  final int? discountPrice;
  final String? vacation;
  final String? description;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // if (product.imageUrl?.isNotEmpty ?? false)
        Stack(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  width: 180,
                  height: 180,
                  child: Image.asset(
                    image ?? '',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(top: 12, left: 12, child: VipView())
          ],
        ),
        if (price != null)
          Text(
            '$price KGS',
            style: discountPrice != null
                ? TextStyle(
                    color: Theme.of(context).textTheme.displayLarge!.color,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.grey,
                  )
                : TextStyle(
                    color: getThemeModeColor.brighnessTheme(context),
                    fontWeight: FontWeight.w700,
                  ),
          ),
        if (discountPrice != null)
          Text(
            '$discountPrice KGS',
            style: TextStyle(
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.disLightRed,
                darkColor: ColorConstants.disLightRed,
              ),
              fontWeight: FontWeight.w700,
            ),
          ),
        if (vacation?.isNotEmpty ?? false)
          Text(
            vacation ?? '',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        if (description?.isNotEmpty ?? false)
          Text(
            description ?? '',
            style: TextStyle(
                color: Theme.of(context).textTheme.displayMedium!.color),
          ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage(
                    AssetConstants.person.png,
                  ),
                ),
                const SizedBox(width: 10),
                const ProContainer(),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 10),
                Icon(Icons.favorite, color: Colors.grey),
              ],
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class ProContainer extends StatelessWidget {
  const ProContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        'pro'.toUpperCase(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 9,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/vip_view.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (product.imageUrl?.isNotEmpty ?? false)
          Stack(
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
                    width: 180,
                    height: 180,
                    child: Image.asset(
                      product.imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Positioned(top: 12, left: 12, child: VipView())
            ],
          ),
        if (product.price != null)
          Text(
            '${product.price!} KGS',
            style: product.discountPrice != null
                ? const TextStyle(
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  )
                : TextStyle(
                    color: getThemeModeColor.brighnessTheme(context),
                    fontWeight: FontWeight.w700,
                  ),
          ),
        if (product.discountPrice != null)
          Text(
            '${product.discountPrice!} KGS',
            style: TextStyle(
              color: getThemeModeColor.brightnessColor(
                context,
                lightColor: ColorConstants.disLightRed,
                darkColor: ColorConstants.disLightRed,
              ),
              fontWeight: FontWeight.w700,
            ),
          ),
        if (product.vacation?.isNotEmpty ?? false)
          Text(
            product.vacation!,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        if (product.description?.isNotEmpty ?? false)
          Text(product.description!),
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
                Container(
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
                ),
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

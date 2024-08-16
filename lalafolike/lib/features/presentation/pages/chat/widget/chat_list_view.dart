import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';

class ChatListView extends StatelessWidget {
  const ChatListView({
    super.key,
    required this.product,
    this.onTap,
  });

  final ProductModel product;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: getThemeModeColor.brightnessColor(context,
            lightColor: Colors.white,
            darkColor: ColorConstants.darkContainerColor),
        child: Column(
          children: [
            ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              leading: CircleAvatar(
                backgroundColor: ColorConstants.grey,
                backgroundImage: AssetImage(AssetConstants.person.png),
              ),
              title: AppText(
                title: product.description ?? '',
                textType: TextType.header,
                color: ColorConstants.black,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: AppText(
                title: product.description ?? '',
                textType: TextType.body,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: SizedBox(
                width: 60,
                height: 60,
                child: Image.asset(product.imageUrl ?? ''),
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: ColorConstants.grey,
            ),
          ],
        ),
      ),
    );
  }
}

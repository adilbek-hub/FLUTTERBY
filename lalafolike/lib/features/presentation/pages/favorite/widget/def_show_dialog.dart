import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: SizedBox(
        height: 300,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.close, size: 35, color: Colors.grey),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(AssetConstants.warning.png,
                      width: 40, color: Colors.yellow),
                  const AppText(
                    textAlign: TextAlign.center,
                    title: 'Удалить все объявления из Избранного?',
                    textType: TextType.header,
                    color: Colors.black,
                  ),
                  const AppText(
                    textAlign: TextAlign.center,
                    title:
                        'Вы больше не будете получать уведомления об изменении цены этих товаров',
                    textType: TextType.body,
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                  color: ColorConstants.green)),
                          onPressed: () => Navigator.of(context).pop(),
                          child: const AppText(
                            title: 'Отменить',
                            textType: TextType.body,
                            color: ColorConstants.green,
                          )),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: ColorConstants.red),
                        ),
                        onPressed: () => Navigator.of(context).pop(),
                        child: const AppText(
                          title: 'Удалить',
                          textType: TextType.body,
                          color: ColorConstants.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

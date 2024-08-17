import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ytp/constants/enams/assets_constants.dart';
import 'package:ytp/core/theme/color_constants.dart';
import 'package:ytp/features/presentation/app_widgets/default_button.dart';
import 'package:ytp/features/presentation/pages/onboarding/mixins/notification_mixin.dart';
import 'package:ytp/router/router.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget with NotificationMixin {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: ColorConstants.greenLayers,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 63),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  'Keep Track Of Purchases:',
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 10),
                Text(
                  'Simplify the purchase of products in the store and their accounting',
                  style: theme.textTheme.bodyMedium,
                ),
                const SizedBox(height: 49),
                DefaultButton(
                    title: 'Next',
                    textStyle: theme.textTheme.bodySmall,
                    backgroundColor: theme.colorScheme.tertiary,
                    onPressed: () {
                      showNotificationDialog(context, theme);
                      showCameraDialog(context, theme);
                      showSpecialOffersDialog(context, theme);
                      context.router.push(const BottomNavRoute());
                    }),
              ],
            ),
          ),
          Image.asset(AssetConstants.women.png),
        ],
      ),
    );
  }
}

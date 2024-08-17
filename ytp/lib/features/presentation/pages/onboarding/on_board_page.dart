import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ytp/constants/enams/assets_constants.dart';
import 'package:ytp/core/theme/color_constants.dart';
import 'package:ytp/features/presentation/app_widgets/default_button.dart';

@RoutePage()
class OnBoardingPage extends StatelessWidget {
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
                    onPressed: () => showNotificationDialog(context, theme)),
              ],
            ),
          ),
          Image.asset(AssetConstants.women.png),
        ],
      ),
    );
  }

  void showNotificationDialog(BuildContext context, ThemeData theme) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.8),
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          contentPadding: const EdgeInsets.all(20),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'NOTIFICATION',
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              Text(
                'Click on allow to receive notifications',
                textAlign: TextAlign.center,
                style: theme.textTheme.labelLarge,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('Block', style: theme.textTheme.labelSmall),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Allow',
                      style: theme.textTheme.labelSmall,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ytp/constants/enams/assets_constants.dart';
import 'package:ytp/features/presentation/app_widgets/default_button.dart';

mixin NotificationMixin {
  void showNotificationDialog(BuildContext context, ThemeData theme) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (BuildContext context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Center(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
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
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child:
                              Text('Block', style: theme.textTheme.labelSmall),
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
              ),
            ),
          ],
        );
      },
    );
  }

  void showCameraDialog(BuildContext context, ThemeData theme) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (BuildContext context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Center(
              child: AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
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
                      'Click on allow to grant access to the camera',
                      textAlign: TextAlign.center,
                      style: theme.textTheme.labelLarge,
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child:
                              Text('Block', style: theme.textTheme.labelSmall),
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
              ),
            ),
          ],
        );
      },
    );
  }

  void showSpecialOffersDialog(BuildContext context, ThemeData theme) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.3),
      builder: (BuildContext context) {
        return Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.close),
                        SizedBox(width: 10),
                      ],
                    ),
                    Container(
                      color: Colors.red,
                      width: double.infinity,
                      child: Image.asset(
                        AssetConstants.image.png,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text('Special Offers', style: theme.textTheme.labelSmall),
                    const SizedBox(height: 13),
                    DefaultButton(
                      title: 'Apply',
                      textStyle: theme.textTheme.bodySmall,
                      onPressed: () => Navigator.pop(context),
                      width: 180,
                      backgroundColor: theme.colorScheme.tertiary,
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

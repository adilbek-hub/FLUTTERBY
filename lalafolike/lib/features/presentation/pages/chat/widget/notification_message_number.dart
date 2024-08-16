import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';

class NotificationMessageNumber extends StatelessWidget {
  const NotificationMessageNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 17,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: AppText(
          title: '74',
          textType: TextType.promocode,
        ),
      ),
    );
  }
}

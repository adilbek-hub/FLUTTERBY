import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/pages/chat/widget/notification_message_number.dart';

class NotificationMenuText extends StatelessWidget {
  const NotificationMenuText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 20.0,
              bottom: 10,
            ),
            child: AppText(
              title: 'Уведомления',
              textType: TextType.body,
              color: Colors.green,
              fontWeight: FontWeight.w700,
            ),
          ),
          Positioned(child: NotificationMessageNumber()),
        ],
      ),
    );
  }
}

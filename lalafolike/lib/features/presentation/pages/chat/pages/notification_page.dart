import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NotificationPage extends StatelessWidget {
  final RemoteMessage message;

  const NotificationPage({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Уведомления'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: ${message.notification?.title ?? 'No Title'}'),
            const SizedBox(height: 8),
            Text('Body: ${message.notification?.body ?? 'No Body'}'),
            const SizedBox(height: 8),
            Text('Data: ${message.data.toString()}'),
            const SizedBox(height: 8),
            Text('Message ID: ${message.messageId ?? 'No Message ID'}'),
            const SizedBox(height: 8),
            Text('Sent Time: ${message.sentTime ?? 'No Sent Time'}'),
          ],
        ),
      ),
    );
  }
}

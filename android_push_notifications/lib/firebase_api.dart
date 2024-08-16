import 'package:android_push_notifications/main.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseAPI {
  //Create an instance of firebase messaging
  final _firebaseMessaging = FirebaseMessaging.instance;

  //functions to initialize notifications
  Future<void> initNotifications() async {
    //request permission from user (will prompt user)
    await _firebaseMessaging.requestPermission();

    //fetch the FCM token for this device
    final FCMToken = await _firebaseMessaging.getToken();

    //Print the token (normally you would send this to your server)
    print('Token: $FCMToken');
// initialize further settings for push noti
    initPushNotifications;
  }

  //function to hundle reseived messages
  void handleMessage(RemoteMessage? message) {
    // if the message is null, do nothing
    if (message == null) return;
    //Navigate to new screen when message is reseived and and user taps notification
    navigatorKey.currentState
        ?.pushNamed('/notification_screen', arguments: message);
  }

  //function to initialize  background settings
  Future initPushNotifications() async {
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}

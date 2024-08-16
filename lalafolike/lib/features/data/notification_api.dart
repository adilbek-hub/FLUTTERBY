import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:lalafolike/router/router.dart';

class FirebaseApi {
  FirebaseApi(this._appRouter);
  final AppRouter _appRouter;
  // Create an instance of firebase Messaging
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  // Function to initialize notification
  Future<void> initNotifications() async {
// request permission from user(will propt user)
    await _firebaseMessaging.requestPermission();
// fetch the FCM token for this device
    final FCMToken = await _firebaseMessaging.getToken();
// print the FCM token
    print("FCM Token: $FCMToken");
//Initialize further settings for push notifications
    initPushNotifications();
  }

// Function to handle reseived messages
  void handleMessage(RemoteMessage? message) {
    // if message is null, do nothing
    if (message == null) return;
    // navigate to new screen whan message is reseived and user taps notification
    _appRouter.push(NotificationRoute(message: message));
  }

  // Function to initialize background settings
  Future initPushNotifications() async {
    // handle notification if the app was terminated and now opened
    FirebaseMessaging.instance.getInitialMessage().then(handleMessage);
    // attach event listeners for when a notification opens the app
    FirebaseMessaging.onMessageOpenedApp.listen(handleMessage);
  }
}

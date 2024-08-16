import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flesh_chat_j/app/data/sms_model.dart';
import 'package:flesh_chat_j/services/user_manager.dart';

class HomeServices {
  static Future<void> logout() async {
    await FirebaseAuth.instance.signOut();
    await userManager.removeUid();
  }

  static Future<void> delete() async {
    await FirebaseAuth.instance.currentUser!.delete();
    await userManager.removeUid();
  }

  static Future<void> sendMessage(String sms) async {
    final sender = FirebaseAuth.instance.currentUser;
    if (sender?.email != null) {
      final db = FirebaseFirestore.instance;
      final SmsModel smsModel =
          SmsModel(send: sender!.email!, sms: sms, time: DateTime.now());
      await db.collection('messages').add(smsModel.toMap());
    }
  }

  static Stream<QuerySnapshot<Map<String, dynamic>>> streamMessage() {
    final db = FirebaseFirestore.instance;
    return db
        .collection('messages')
        .orderBy('time', descending: true)
        .snapshots();
  }
}

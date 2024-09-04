import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Stream<QuerySnapshot> getMessages() {
    return FirebaseFirestore.instance
        .collection('messages')
        .orderBy('createdAt', descending: true)
        .snapshots();
  }

  Future<void> sendMessage(String text) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      try {
        await _firestore.collection('messages').add({
          'text': text,
          'createdAt': Timestamp.now(),
          'userId': user.uid,
          'userName': user.displayName ?? 'Anonymous',
          'userAvatar': user.photoURL ?? '',
        });
      } catch (e) {
        print('Билдирүүнү жөнөтүүдө ката кетти: $e');
      }
    } else {
      print('Колдонуучу катталган эмес');
    }
  }
}
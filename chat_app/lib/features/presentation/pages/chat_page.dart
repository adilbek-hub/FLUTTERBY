import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});
  static const String id = 'chat_page';

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final fireStore = FirebaseFirestore.instance;
  final auth = FirebaseAuth.instance;

  final TextEditingController messageController = TextEditingController();
  void deleteText() {
    messageController.clear();
  }

  Future<void> _addData() async {
    try {
      fireStore.collection('example').add(
          {'text': messageController.text, 'sender': auth.currentUser!.uid});
    } catch (e) {
      print('Error adding data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Container(
                      width: 200,
                      child: TextField(
                        controller: messageController,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        _addData();
                        deleteText();
                      },
                      icon: Icon(Icons.send),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                StreamBuilder(
                    stream: fireStore.collection('example').snapshots(),
                    builder: (context, snapshots) {
                      if (snapshots.hasData) {
                        final messages = snapshots.data!.docs;
                        List<Text> messageWidgets = [];
                        for (var message in messages) {
                          final messageText = message['text'];
                          final messageWidget = Text('$messageText');
                          messageWidgets.add(messageWidget);
                        }
                        return Center(
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: messageWidgets),
                        );
                      } else {
                        return Text('data not found');
                      }
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}

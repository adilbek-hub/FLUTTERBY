import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_image_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_field.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';

/*
@RoutePage()
class ChatWithUserPage extends StatefulWidget {
  const ChatWithUserPage({Key? key}) : super(key: key);

  @override
  _ChatWithUserPageState createState() => _ChatWithUserPageState();
}

class _ChatWithUserPageState extends State<ChatWithUserPage> {
  final CollectionReference _messages =
      FirebaseFirestore.instance.collection('messages');
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _messages.snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                final messages = snapshot.data!.docs;
                return ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    return ListTile(
                      title: Text(message['text']),
                    );
                  },
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      hintText: 'Type a message',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _sendMessage(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() async {
    final text = _textEditingController.text.trim();
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      if (text.isNotEmpty) {
        try {
          await FirebaseFirestore.instance.collection('messages').add({
            'text': text,
            'timestamp': Timestamp.now(),
            'userId': user.uid, // Колдонуучунун IDсин кошуу
          });
          _textEditingController.clear();
        } catch (e) {
          print('Error sending message: $e');
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Error'),
                content: Text('Failed to send message. Please try again.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      }
    } else {
      print('User is not authenticated.');
    }
  }
}
*/
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
          'createdAt': FieldValue.serverTimestamp(),
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

@RoutePage()
class ChatWithUserPage extends StatelessWidget {
  const ChatWithUserPage({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.grey),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(AssetConstants.spider2.png),
            ),
            const SizedBox(width: 15),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  title: 'Spider Man',
                  textType: TextType.body,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                AppText(
                  title: 'Был(а) в сети 14.08.2024',
                  textType: TextType.promocode,
                  color: Colors.black,
                ),
              ],
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.grey),
          ),
        ],
      ),
      body: Column(
        children: [
          const Divider(
            color: ColorConstants.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CustomImageContainer(
                  width: 40,
                  height: 40,
                  borderRadius: 15,
                  imageUrl: product.imageUrl ?? '',
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: product.description ?? '',
                      textType: TextType.promocode,
                      color: ColorConstants.grey,
                    ),
                    AppText(
                      title: '${product.price} сом',
                      textType: TextType.body,
                      color: ColorConstants.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ),
          const Divider(color: ColorConstants.grey),
          Expanded(
            child: ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return const Text('Hello');
                }),
          ),
        ],
      ),
      bottomNavigationBar: SingleChildScrollView(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: const Offset(0, 1),
                    color: Colors.black.withOpacity(0.1),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 15),
                    SizedBox(
                      height: 30,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const CustomTextContainer(
                            text: 'Hello, Flutter!',
                            borderRadius: 15.0,
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Divider(color: Colors.grey),
                    Row(
                      children: [
                        const Icon(Icons.photo_camera,
                            color: Colors.green, size: 40),
                        const SizedBox(width: 10),
                        Expanded(
                          child: CustomTextField(
                            controller: TextEditingController(),
                            hintText: 'Сообщение...',
                            borderColor: Theme.of(context).colorScheme.surface,
                            borderRadius: 15.0,
                            borderWidth: 2.0,
                            backgroundColor:
                                Theme.of(context).colorScheme.surface,
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            textStyle: const TextStyle(color: Colors.blue),
                          ),
                        ),
                        const SizedBox(width: 10),
                        const CircleAvatar(
                            backgroundColor: Colors.green,
                            child:
                                Icon(Icons.arrow_upward, color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

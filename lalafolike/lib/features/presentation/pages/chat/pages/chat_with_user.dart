import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_image_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_field.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';

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

@RoutePage()
class ChatWithUserPage extends StatefulWidget {
  const ChatWithUserPage({super.key, required this.product});
  final ProductModel product;

  @override
  _ChatWithUserPageState createState() => _ChatWithUserPageState();
}

class _ChatWithUserPageState extends State<ChatWithUserPage> {
  final ChatService _chatService = ChatService();
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      _chatService.sendMessage(_messageController.text.trim());
      _messageController.clear();
    }
  }

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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: FirebaseAuth.instance.currentUser?.uid ?? '',
                    textType: TextType.body,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    overflow: TextOverflow.ellipsis, // Ensures ellipsis works
                    maxLines: 1, // Limits to 1 line to trigger ellipsis
                  ),
                  const AppText(
                    title: 'Был(а) в сети 14.08.2024',
                    textType: TextType.promocode,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
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
          const Divider(color: ColorConstants.grey),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                CustomImageContainer(
                  width: 40,
                  height: 40,
                  borderRadius: 15,
                  imageUrl: widget.product.imageUrl ?? '',
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      title: widget.product.description ?? '',
                      textType: TextType.promocode,
                      color: ColorConstants.grey,
                    ),
                    AppText(
                      title: '${widget.product.price} сом',
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
            child: StreamBuilder<QuerySnapshot>(
              stream: _chatService.getMessages(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                final messages = snapshot.data!.docs;

                return ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    final isMe = message['userId'] ==
                        FirebaseAuth.instance.currentUser?.uid;
                    // Formats createdAt
                    final Timestamp timestamp = message['createdAt'];
                    final DateTime dateTime = timestamp.toDate();
                    final String formattedTime =
                        DateFormat('HH:mm').format(dateTime);
                    final String formattedDate =
                        DateFormat('dd.MM.yy').format(dateTime);

                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 10.0),
                      child: Align(
                        alignment:
                            isMe ? Alignment.centerRight : Alignment.centerLeft,
                        child: SizedBox(
                          width: isMe ? 200.0 : 240.0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                color: isMe
                                    ? ColorConstants.green.withOpacity(0.3)
                                    : const Color.fromARGB(255, 197, 215, 221),
                                borderRadius: isMe
                                    ? BorderRadius.circular(18)
                                    : BorderRadius.circular(12)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  message['text'] ?? '',
                                  style: TextStyle(
                                    color: isMe ? Colors.black : Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    formattedDate,
                                    style: TextStyle(
                                      color: isMe ? const Color.fromARGB(255, 109, 125, 129) : Color.fromARGB(255, 109, 125, 129),
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.schedule, color: ColorConstants.grey, size: 20),
                SizedBox(width: 10),
                AppText(
                  textAlign: TextAlign.center,
                  title: 'отвечает на 50% сообщений \n Обычно в течение дня',
                  textType: TextType.subtitle,
                  color: Color.fromARGB(255, 109, 125, 129),
                ),
              ],
            ),
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
                            controller: _messageController,
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
                        GestureDetector(
                          onTap: _sendMessage,
                          child: const CircleAvatar(
                            backgroundColor: Colors.green,
                            child:
                                Icon(Icons.arrow_upward, color: Colors.white),
                          ),
                        ),
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

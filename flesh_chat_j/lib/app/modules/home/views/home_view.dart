import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flesh_chat_j/app/data/sms_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          actions: [
            PopupMenuButton(
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: const Text('Logout'),
                        onTap: () async => await controller.logout(),
                      ),
                      PopupMenuItem(
                        child: const Text('Delete'),
                        onTap: () async => await controller.delete(),
                      ),
                    ])
          ],
          centerTitle: true,
        ),
        body: Column(
          children: [
            MessageStream(controller.streamMessages()),
            Container(
              decoration: const BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.red, width: 1))),
              child: Row(
                children: [
                  Expanded(
                      child:
                          TextFormField(controller: controller.smsController)),
                  IconButton(
                      onPressed: () async {
                        controller.sendMessage();
                      },
                      icon: const Icon(
                        Icons.send,
                        color: Colors.red,
                      ))
                ],
              ),
            )
          ],
        ));
  }
}

/*
class MessageStream extends StatelessWidget {
  const MessageStream(this.streamMessages, {super.key});
  final Stream<QuerySnapshot<Map<String, dynamic>>> streamMessages;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow,
        child: StreamBuilder<QuerySnapshot>(
            stream: streamMessages,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // ignore: unnecessary_cast
                final messages = snapshot.data!.docs.reversed as Iterable;
                final widgets =
                    messages.map((e) => Text(e.data()['sms'])).toList();
                return ListView(
                  children: widgets,
                );
              } else {
                return const Center(
                  child: CupertinoActivityIndicator(),
                );
              }
            }),
      ),
    );
  }
}
*/
class MessageStream extends StatelessWidget {
  const MessageStream(this.streamMessages, {super.key});
  final Stream<QuerySnapshot<Map<String, dynamic>>> streamMessages;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context).colorScheme;
    return Expanded(
      child: StreamBuilder<QuerySnapshot>(
          stream: streamMessages,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              // ignore: unnecessary_cast
              final messages = (snapshot.data!.docs.reversed as Iterable).map(
                  (e) => SmsModel.fromMap(e.data())
                    ..isMy = e.data()['send'] ==
                        FirebaseAuth.instance.currentUser?.email);

              return ListView(
                children: messages
                    .map(
                      (e) => Padding(
                        padding: EdgeInsets.fromLTRB(
                          !e.isMy! ? 10 : width / 2,
                          7,
                          e.isMy! ? 10 : width / 2,
                          7,
                        ),
                        child: Material(
                          color: e.isMy!
                              ? theme.primary
                              : theme.onPrimaryContainer,
                          clipBehavior: Clip.none,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: const Radius.circular(10),
                              bottomRight: const Radius.circular(10),
                              topLeft: !e.isMy!
                                  ? const Radius.circular(0)
                                  : const Radius.circular(20),
                              topRight: !e.isMy!
                                  ? const Radius.circular(0)
                                  : const Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(15, 15, 15, 10),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  !e.isMy!
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.send,
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: theme.primary,
                                              ),
                                            ),
                                          ],
                                        )
                                      : const SizedBox.shrink(),
                                  Text(
                                    e.sms,
                                    style: TextStyle(
                                      fontSize: 16,
                                      height: 1.4,
                                      color: e.isMy! ? Colors.white : null,
                                    ),
                                  ),
                                  const SizedBox(height: 7),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        DateFormat('dd/MM/yy (hh:mm)')
                                            .format(e.time),
                                        style: TextStyle(
                                          fontSize: 12,
                                          height: 1.4,
                                          color: e.isMy! ? Colors.white : null,
                                        ),
                                      ),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            } else {
              return const Center(
                child: CupertinoActivityIndicator(),
              );
            }
          }),
    );
  }
}

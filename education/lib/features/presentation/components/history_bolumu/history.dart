import 'package:education/features/presentation/views/history_topics_view.dart';
import 'package:flutter/material.dart';

import 'history_container.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const HistoryContainer(),
            Expanded(child: HistoryTopics()),
          ],
        ),
      ),
    );
  }
}

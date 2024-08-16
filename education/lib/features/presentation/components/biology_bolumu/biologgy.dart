import 'package:education/features/presentation/views/biology_topics_view.dart';

import 'package:flutter/material.dart';

import 'biology_container.dart';

class Biologgy extends StatelessWidget {
  const Biologgy({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const BiologyContainer(),
            Expanded(child: BiologyTopics()),
          ],
        ),
      ),
    );
  }
}

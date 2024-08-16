import 'package:education/features/presentation/views/geography_topics_view.dart';
import 'package:flutter/material.dart';

import 'geography_container.dart';

class Geography extends StatelessWidget {
  const Geography({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GeographyContainer(),
          Expanded(child: GeographyTopics()),
        ],
      ),
    );
  }
}

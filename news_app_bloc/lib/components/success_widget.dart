import 'package:flutter/material.dart';

import '../models/news.dart';

class SuccessWidget extends StatelessWidget {
  const SuccessWidget({
    Key? key,
    required this.newsText,
  }) : super(key: key);
  final List<News> newsText;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: newsText.length,
      itemBuilder: (context, index) {
        final news = newsText[index];
        return ListTile(
          title: Text(news.author ?? ''),
          subtitle: Text(news.description),
        );
      },
    );
  }
}

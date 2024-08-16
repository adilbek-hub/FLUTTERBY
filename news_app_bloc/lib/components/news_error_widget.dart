import 'package:flutter/material.dart';

class NewsErrorWidget extends StatelessWidget {
  const NewsErrorWidget({
    Key? key,
    required this.errorNext,
  }) : super(key: key);
  final String errorNext;

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(errorNext));
  }
}

import 'package:flutter/material.dart';

class ServiceError extends StatelessWidget {
  const ServiceError({
    super.key,
    this.onPressed,
    required this.errorMessage,
  });
  final void Function()? onPressed;
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(22.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('SERVISE ERROR'),
        ],
      ),
    );
  }
}

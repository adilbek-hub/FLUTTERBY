import 'package:flutter/material.dart';

class CustomCircularContainer extends StatelessWidget {
  final double size;
  final Color backgroundColor;
  final Widget? child;
  final ImageProvider? image;

  const CustomCircularContainer({
    Key? key,
    this.size = 60.0,
    this.backgroundColor = Colors.grey,
    this.child,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
        image: image != null
            ? DecorationImage(
                image: image!,
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: image == null ? child : null,
    );
  }
}

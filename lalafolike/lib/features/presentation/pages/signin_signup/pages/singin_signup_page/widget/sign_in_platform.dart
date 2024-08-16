import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';

class SignInPlatform extends StatelessWidget {
  const SignInPlatform({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: ColorConstants.white,
      backgroundImage: AssetImage(image),
    );
  }
}

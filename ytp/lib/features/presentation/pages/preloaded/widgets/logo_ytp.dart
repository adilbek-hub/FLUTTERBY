import 'package:flutter/material.dart';
import 'package:ytp/constants/enams/assets_constants.dart';

class LogoYTP extends StatelessWidget {
  const LogoYTP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 40,
        ),
        child: Image.asset(
          AssetConstants.ytp.png,
          width: 100,
        ),
      ),
    );
  }
}

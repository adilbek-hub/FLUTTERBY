import 'package:flutter/material.dart';
import '../../constants/constants_export.dart';

class AboutSumRow extends StatelessWidget {
  const AboutSumRow({
    Key? key,
    required this.price,
    required this.pricePer,
  }) : super(key: key);
  final String price;
  final String pricePer;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          price,
          style: AppTextStyles.priceStyle,
        ),
        Text(
          pricePer,
          style: AppTextStyles.tStyle4,
        ),
      ],
    );
  }
}

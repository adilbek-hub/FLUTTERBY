import 'package:flutter/material.dart';

import '../../features/presentation/views/detail_view.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.profitableTasty.smallPizza.name,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Icons.info_outline,
          color: Colors.grey,
        ),
      ],
    );
  }
}

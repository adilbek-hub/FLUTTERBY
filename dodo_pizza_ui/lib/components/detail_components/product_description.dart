import 'package:flutter/material.dart';

import '../../features/presentation/views/detail_view.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Text(
      widget.profitableTasty.smallPizza.description,
      style: const TextStyle(
        color: Colors.grey,
        fontSize: 13,
      ),
    );
  }
}

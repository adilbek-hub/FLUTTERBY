import 'package:flutter/material.dart';

import '../../features/presentation/views/detail_view.dart';

class ProductIngredient extends StatelessWidget {
  const ProductIngredient({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        widget.profitableTasty.ingreTitle,
        style: const TextStyle(
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../features/presentation/views/detail_view.dart';

class ProductSmallSize extends StatelessWidget {
  const ProductSmallSize({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        widget.profitableTasty.smallPizza.sizePizza,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
        ),
      ),
    );
  }
}

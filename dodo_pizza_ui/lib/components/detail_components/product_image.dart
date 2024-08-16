import 'package:flutter/material.dart';

import '../../features/presentation/views/detail_view.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Image.asset(widget.profitableTasty.smallPizza.image,
        fit: BoxFit.fitHeight);
  }
}

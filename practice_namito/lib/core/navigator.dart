import 'package:flutter/material.dart';
import 'package:practice_namito/features/presentation/pages/new_product/new_product_page.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';

// Navigation function
void navigateToNewProducts(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const NewProductsPage(),
    ),
  );
}

void navigateToProductDetail(BuildContext context, int productId) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => ProductDetailPage(productId: productId),
    ),
  );
}

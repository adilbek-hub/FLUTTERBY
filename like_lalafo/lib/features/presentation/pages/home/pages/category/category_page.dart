import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/category.dart';
import 'package:like_lalafo/features/presentation/pages/home/pages/category/category_children.dart';

@RoutePage()
class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});
  double calculateTotalPrice(List<Children> children) {
    double total = 0.0;
    for (var child in children) {
      total += child.price;
      if (child.children != null) {
        total += calculateTotalPrice(child.children!);
      }
    }
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: const Icon(
            Icons.close,
            size: 34,
            color: ColorConstants.grey,
          ),
        ),
        title: const Text(
          'Категории',
          style: TextStyle(
            fontSize: 16,
            color: ColorConstants.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          final categoryTotalPrice =
              calculateTotalPrice(category.children ?? []);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: category.children != null
                  ? () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryChildrenPage(
                            category: category,
                            children: category.children!,
                          ),
                        ),
                      );
                    }
                  : null,
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 70,
                decoration: BoxDecoration(
                  color: getRandomColor(),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            category.image,
                            width: 30,
                          ),
                          const SizedBox(width: 10),
                          Text(category.name),
                        ],
                      ),
                      Row(
                        children: [
                          Text(categoryTotalPrice.toString()),
                          const SizedBox(width: 10),
                          const Icon(
                            Icons.chevron_right,
                            color: ColorConstants.black,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

Color getRandomColor() {
  final Random random = Random();
  return Color.fromARGB(
    random.nextInt(129),
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

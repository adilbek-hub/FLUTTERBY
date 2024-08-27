import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/pages/home/model/category.dart';
import 'package:lalafolike/router/router.dart';

class Categories extends StatefulWidget {
  const Categories({
    super.key,
  });

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    final firstRowItems = categories.sublist(0, (categories.length / 2).ceil());
    final secondRowItems = categories.sublist((categories.length / 2).ceil());

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: firstRowItems
                  .map(
                    (f) => GestureDetector(
                      onTap: () =>
                          context.router.push(CategoryDetailRoute(category: f)),
                      child: Container(
                        margin: const EdgeInsets.all(4.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 7.0),
                        decoration: BoxDecoration(
                          color: getRandomColor(),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset(
                                f.image,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: f.name,
                                  textType: TextType.subtitle,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .color,
                                ),
                                AppText(
                                  textType: TextType.promocode,
                                  title: f.price.toString(),
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            Row(
              children: secondRowItems
                  .map(
                    (f) => GestureDetector(
                      onTap: () => context.router.push(
                        (CategoryDetailRoute(category: f)),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(2.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 7.0),
                        decoration: BoxDecoration(
                          color: getRandomColor(), // Random color
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 30,
                              height: 30,
                              child: Image.asset(f.image),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  title: f.name,
                                  textType: TextType.subtitle,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .color,
                                ),
                                AppText(
                                  title: f.price.toString(),
                                  textType: TextType.promocode,
                                  color: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .color,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromRGBO(
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
      0.2,
    );
  }
}

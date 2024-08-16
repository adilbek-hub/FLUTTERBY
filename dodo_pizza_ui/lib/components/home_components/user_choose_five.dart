import 'package:dodo_pizza_ui/features/data/model.dart';
import 'package:flutter/material.dart';

class UserChooseFive extends StatelessWidget {
  const UserChooseFive({
    super.key,
    required this.foodss2,
  });

  final HomeFoods2 foodss2;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 13,
          vertical: 20,
        ),
        child: Row(
          children: [
            Image.network(
              foodss2.image,
              width: 110,
              height: 110,
            ),
            Column(
              children: [
                SizedBox(
                  width: 250,
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            foodss2.title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                      Text(foodss2.description),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

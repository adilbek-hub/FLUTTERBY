import 'package:dodo_pizza_ui/features/data/model.dart';
import 'package:flutter/material.dart';

class UserChooseFour extends StatelessWidget {
  const UserChooseFour({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: ListView.builder(
          itemCount: gomeFoodsList2.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final foodss2 = gomeFoodsList2[index];
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
          }),
    );
  }
}

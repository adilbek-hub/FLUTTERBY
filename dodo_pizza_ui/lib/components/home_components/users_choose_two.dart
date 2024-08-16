import 'package:dodo_pizza_ui/features/data/models/type_of_pizza.dart';
import 'package:flutter/material.dart';

class UserChoosesTwo extends StatelessWidget {
  const UserChoosesTwo({
    super.key,
    required this.onTap,
    required this.profitableTasty,
  });
  final void Function()? onTap;
  final TypeOfPizza profitableTasty;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(50),
                child: Image.asset(
                  profitableTasty.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  profitableTasty.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 203, 202, 202),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('от ${profitableTasty.price} сом'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

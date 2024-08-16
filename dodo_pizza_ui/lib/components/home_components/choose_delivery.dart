import 'package:flutter/material.dart';

class ChooseDelivery extends StatelessWidget {
  const ChooseDelivery({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 100,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 192, 192, 192),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Container(
                      width: 150,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(child: Text('Доставка')),
                    ),
                    Container(
                      width: 150,
                      height: 35,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: const Center(child: Text('В пиццерии')),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          const Divider(
            color: Colors.grey,
            indent: 25,
            endIndent: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Выбрать адресс доставки',
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 16,
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.deepOrange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

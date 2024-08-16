import 'package:flutter/material.dart';

class BasketButton extends StatelessWidget {
  const BasketButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrange,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        minimumSize: const Size(100, 40),
      ),
      onPressed: () {},
      child: const Text(
        'В корзину за 445 сом',
        style: TextStyle(
          color: Colors.white,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
    ));
  }
}

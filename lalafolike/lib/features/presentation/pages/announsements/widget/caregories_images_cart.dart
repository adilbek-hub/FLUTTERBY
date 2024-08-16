import 'package:flutter/material.dart';

class CategoriesImagesCart extends StatelessWidget {
  const CategoriesImagesCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        color: Colors.grey[350],
        child: const Icon(
          Icons.add,
          color: Color.fromARGB(255, 106, 105, 105),
        ),
      ),
    );
  }
}

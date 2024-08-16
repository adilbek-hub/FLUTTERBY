import 'package:flutter/material.dart';

class UserChoosesOne extends StatelessWidget {
  const UserChoosesOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: SizedBox.fromSize(
          size: const Size.fromRadius(50),
          child: Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRSJ2fu-y0gF3xkFOdiX-4f1UC0Pqvd3K8rrw&usqp=CAU',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

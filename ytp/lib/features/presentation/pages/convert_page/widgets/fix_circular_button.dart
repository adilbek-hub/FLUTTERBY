import 'package:flutter/material.dart';

class FixCircularButton extends StatelessWidget {
  const FixCircularButton({super.key, required this.theme});
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        color: theme.colorScheme.tertiary,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 68.0,
          height: 68.0,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(0),
              backgroundColor: theme.colorScheme.primaryContainer,
            ),
            onPressed: () {},
            child:
                const Icon(Icons.compare_arrows, color: Colors.white, size: 50),
          ),
        ),
      ),
    );
  }
}

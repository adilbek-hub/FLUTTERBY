import 'package:flutter/material.dart';

class CustomRadioListTile extends StatelessWidget {
  final int value;
  final int groupValue;
  final String title;
  final ValueChanged<int?> onChanged;

  const CustomRadioListTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.title,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 16)),
        Radio<int>(
          activeColor: Colors.green,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

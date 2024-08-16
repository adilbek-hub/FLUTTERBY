import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';

class PriceField extends StatelessWidget {
  final TextEditingController controller;
  const PriceField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.green,
      keyboardType: TextInputType.number,
      decoration: const InputDecoration(
        hintText: 'Договорная',
        hintStyle: TextStyle(fontSize: 15, color: ColorConstants.grey),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.grey,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.grey,
          ),
        ),
      ),
    );
  }
}

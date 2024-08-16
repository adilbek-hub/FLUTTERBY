import 'package:flutter/material.dart';

class MessageCode extends StatelessWidget {
  const MessageCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        height: 50,
        width: 50,
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            fillColor: Color(0xffE6E5E5),
            filled: true,
            hintText: '',
            labelText: '',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                12,
              ),
              borderSide: const BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}

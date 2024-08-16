import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UserInputField extends StatelessWidget {
  const UserInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: <TextInputFormatter>[
        FilteringTextInputFormatter.digitsOnly
      ],
      decoration: InputDecoration(
        hintText: '(+996) 000 00 00 00',
        labelText: 'Enter your phone number',
        prefixIcon: Image.asset('assets/images/kyrgyzstan.png'),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            12,
          ),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 218, 35, 35),
          ),
        ),
      ),
    );
  }
}

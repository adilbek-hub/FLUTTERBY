import 'package:flutter/material.dart';

class SignInSignUpTextField extends StatelessWidget {
  const SignInSignUpTextField({
    super.key,
    required this.prefixIcon,
    required this.hintText,
    this.suffixIcon,
    this.textColor = Colors.black,
    this.iconColor = Colors.grey,
    this.controller,
    this.obscureText = false,
  });

  final Icon prefixIcon;
  final String hintText;
  final Icon? suffixIcon;
  final Color textColor;
  final Color iconColor;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.green, width: 2.0),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(color: Colors.green),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        prefixIcon: Icon(prefixIcon.icon, color: iconColor),
        hintText: hintText,
        hintStyle: TextStyle(color: textColor),
        suffixIcon: suffixIcon != null
            ? Icon(suffixIcon!.icon, color: iconColor)
            : null,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_app/constants/constants_export.dart';

class TextForms extends StatefulWidget {
  const TextForms({
    Key? key,
    required this.controller,
    required this.labelText,
    required this.hintText,
    required this.validator,
    required this.isValidEmail,
  }) : super(key: key);
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final String? Function(String?)? validator;
  final bool isValidEmail;

  @override
  State<TextForms> createState() => _TextFormsState();
}

class _TextFormsState extends State<TextForms> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: TextFormField(
        controller: widget.controller,
        validator: widget.validator,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide:
                const BorderSide(color: AppColors.containerScreen, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: AppColors.containerScreen,
              width: 2.0,
            ),
          ),
          labelText: widget.labelText,
          hintText: widget.hintText,
          errorText: widget.isValidEmail ? null : AppTexts.unCurrectNumber,
          fillColor: AppColors.containerScreen,
          filled: true,
        ),
      ),
    );
  }
}

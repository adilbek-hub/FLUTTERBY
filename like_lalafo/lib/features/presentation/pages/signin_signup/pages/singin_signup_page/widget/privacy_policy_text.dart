import 'package:flutter/material.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Региструясь, вы принимаете ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'Согласие на обработку персональных данных',
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: ', ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'Пользовательское соглашение',
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: ', ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'Политику конфиденциальности',
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: ', ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: ' и ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'Договор-оферту',
            style: TextStyle(color: Colors.green),
          ),
          TextSpan(
            text: ' на ',
            style: TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: 'lalafo.kg',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

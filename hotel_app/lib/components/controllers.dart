import 'package:flutter/material.dart';

class Controllers {
  final formKey = GlobalKey<FormState>();
  final nameEditingController = TextEditingController();
  final sureNameEditingController = TextEditingController();
  final birthdayEditingController = TextEditingController();
  final citizenshipEditingController = TextEditingController();
  final passportNumberEditingController = TextEditingController();
  final periodOfThePassportEditingController = TextEditingController();
  TextEditingController emailController = TextEditingController();
}

final Controllers controllers = Controllers();

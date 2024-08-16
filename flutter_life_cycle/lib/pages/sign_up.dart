import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/pages/home_page.dart';
import 'package:flutter_life_cycle/pages/sign_in.dart';
import 'package:flutter_life_cycle/service/user_state.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final ctrName = TextEditingController();
  final ctrLastName = TextEditingController();
  final ctrPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Register'),
      ),
      body: Column(
        children: [
          TextFormField(controller: ctrName),
          TextFormField(controller: ctrLastName),
          TextFormField(controller: ctrPassword),
          ElevatedButton(
            onPressed: () async {
              await userService.signUp(
                  name: ctrName.text,
                  lastName: ctrLastName.text,
                  password: ctrPassword.text);
              // ignore: use_build_context_synchronously
              await Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                  (route) => false);
            },
            child: const Text('Register'),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SignIn()));
            },
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_life_cycle/pages/home_page.dart';
import 'package:flutter_life_cycle/service/user_state.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});

  final ctrName = TextEditingController();

  final ctrPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(' Sign In'),
      ),
      body: Column(
        children: [
          TextFormField(controller: ctrName),
          TextFormField(controller: ctrPassword),
          ElevatedButton(
            onPressed: () async {
              final isTrue = await userService.signIn(
                name: ctrName.text,
                password: ctrPassword.text,
              );
              if (isTrue) {
                // ignore: use_build_context_synchronously
                await Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                    (route) => false);
              } else {
                print('Логин же паролуңуз туура эмес');
              }
            },
            child: const Text('Sign In'),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}

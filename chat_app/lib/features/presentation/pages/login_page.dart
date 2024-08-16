import 'package:flutter/material.dart';
import '../../../components/custom_button.dart';
import '../../../components/login_text_field.dart';
import '../../../components/logo_image.dart';
import 'chat_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String id = 'login_page';
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoImage(logoSize: 100),
              CustomTextField(
                text: 'Электрондук почтаңыз',
                onChanged: (maani) {},
              ),
              CustomTextField(
                text: 'Сыр сөзүңүз',
                onChanged: (maani) {},
              ),
              CustomButton(
                color: Colors.lightBlueAccent,
                text: 'Логин',
                onPressed: () {
                  Navigator.pushNamed(context, ChatPage.id);
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Каттала элексизби?'),
                  Text(
                    ' каталыңыз.',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

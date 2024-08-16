import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tata_dev/components/privacy_policy_text.dart';
import 'package:tata_dev/components/proceed_button.dart';
import 'package:tata_dev/components/scuare_button.dart';
import 'package:tata_dev/components/user_input_field.dart';
import 'package:tata_dev/feastures/presentation/provider_class.dart';
import 'package:tata_dev/feastures/presentation/views/message_view.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProviderClass>(
      builder: (context, providerClass, child) {
        return Scaffold(
          body: Column(
            children: [
              const SizedBox(height: 60),
              const Text(
                'tataDev',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Введите номер',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Text(
                      'телефона',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Image.asset('assets/images/image.png'),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0),
                      child: UserInputField(),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        SquareButton(
                          onPressed: () {
                            providerClass.toping();
                          },
                          icon: Icon(
                            providerClass.isTrue == true ? Icons.check : null,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const PrivacyPolicyText()
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              ProceedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessageView(),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

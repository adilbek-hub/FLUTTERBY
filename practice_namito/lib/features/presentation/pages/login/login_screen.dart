import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/presentation/pages/code_verification/code_verification_screen.dart';
import 'package:practice_namito/features/presentation/pages/login/bloc/login_bloc_bloc.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: phoneNumberController,
              decoration: const InputDecoration(
                labelText: 'Phone Number',
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            BlocConsumer<LoginBloc, LoginBlocState>(
              listener: (context, state) {
                if (state is LoginBlocSuccess) {
                  WidgetsBinding.instance.addPostFrameCallback((_) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => VerifyPinScreen(
                            phoneNumber: phoneNumberController.text),
                      ),
                    );
                  });
                } else if (state is LoginBlocError) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Login failed: ${state.error}')),
                  );
                }
              },
              builder: (context, state) {
                if (state is LoginBlocLoading) {
                  return const CircularProgressIndicator();
                }

                return ElevatedButton(
                  onPressed: () {
                    final String phoneNumber = phoneNumberController.value.text;
                    if (phoneNumber.isNotEmpty) {
                      context
                          .read<LoginBloc>()
                          .add(LoginEvent(phoneNumber: phoneNumber));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Please enter your phone number')),
                      );
                    }
                  },
                  child: const Text('Login'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice_namito/features/data/model/token.dart';
import 'package:practice_namito/features/data/repo/login_repo.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_product_page.dart';

class VerifyPinScreen extends StatelessWidget {
  final String phoneNumber;
  final TextEditingController pinCodeController = TextEditingController();

  VerifyPinScreen({super.key, required this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Pin Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter the PIN sent to $phoneNumber'),
            TextField(
              controller: pinCodeController,
              decoration: const InputDecoration(
                labelText: 'PIN Code',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                final String pinCode = pinCodeController.text;
                if (pinCode.isNotEmpty) {
                  try {
                    final LoginRepo loginRepo = LoginRepo();
                    final TokenModel tokenModel =
                        await loginRepo.verifyPin(pinCode: pinCode);
                    // Токендерди сактоо же башка иш-чаралар
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Verification successful!')),
                    );
                    // Home Screenге багыттоо
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopProductsPage()));
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Verification failed: $e')),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter the PIN code')),
                  );
                }
              },
              child: const Text('Verify'),
            ),
          ],
        ),
      ),
    );
  }
}

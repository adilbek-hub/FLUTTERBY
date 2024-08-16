import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:tata_dev/components/proceed_button.dart';
import 'package:tata_dev/feastures/presentation/views/register3_view.dart';

class MessageView extends StatelessWidget {
  const MessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                  'Введите код из СМС',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/prosses2.png'),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Pinput(
                    //   length: 4,
                    //   defaultPinTheme: PinTheme(
                    //       width: 50,
                    //       height: 50,
                    //       decoration: BoxDecoration(
                    //         color: const Color(0xffE6E5E5),
                    //         borderRadius: BorderRadius.circular(8),
                    //       )),
                    // )
                  ],
                ),
                const SizedBox(height: 5),
                const Center(
                  child: Text(
                    'Повторный код через 0:41',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ProceedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Register3View(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

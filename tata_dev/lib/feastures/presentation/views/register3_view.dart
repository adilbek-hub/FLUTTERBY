import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:tata_dev/components/proceed_button.dart';
import 'package:tata_dev/components/user_add.dart';
import 'package:tata_dev/feastures/presentation/views/register_view.dart';

class Register3View extends StatelessWidget {
  const Register3View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 228, 228),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Регистрация',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset('assets/images/raduga.png'),
            ],
          ),
          const SizedBox(height: 20),
          Image.asset('assets/images/prosses2.png'),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'ФИО',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF0EFEF),
                        hintText: 'ФИО',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 218, 35, 35),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 25,
                      bottom: 12,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Дата рождения',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UsersAdd(
                        text: 'Дата',
                        icon: Icon(Icons.expand_more_rounded),
                      ),
                      UsersAdd(
                        text: 'Месяц',
                        icon: Icon(Icons.expand_more_rounded),
                      ),
                      UsersAdd(
                        text: 'Год',
                        icon: Icon(Icons.expand_more_rounded),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      top: 20,
                      bottom: 12,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Адресс электронной почты',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color(0xffF0EFEF),
                        hintText: 'Адресс электронной почты',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          borderSide: const BorderSide(
                            color: Color.fromARGB(255, 218, 35, 35),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ProceedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const RegisterView(),
            ),
          );
        },
      ),
    );
  }
}

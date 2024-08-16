import 'package:education/features/data/model/informatica_model.dart';
import 'package:flutter/material.dart';
import 'package:education/features/presentation/pages/informatica_test/personal_computer_test_page.dart';

import '../../components/test_synagy_button.dart';

class PersonalComputers extends StatelessWidget {
  const PersonalComputers({
    Key? key,
    required this.informaticaTopics,
  }) : super(key: key);
  final InformaticaTopics informaticaTopics;

  @override
  Widget build(BuildContext context) {
    final presonalComputers =
        informaticaTopics.informatica[1].personalComputer![0];
    return Scaffold(
      appBar: AppBar(
        title: Text(informaticaTopics.informatica[0].title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Text(
                  presonalComputers.tema1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  presonalComputers.description1,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),

                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n${presonalComputers.text2} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description2,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.text3} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description3,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.tema4} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description4,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.text5} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description5,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.tema6} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: '${presonalComputers.description6} ',
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////

                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '${presonalComputers.tema7} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description7,
                      ),
                      TextSpan(
                        text: '\n${presonalComputers.tema8} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: presonalComputers.description8,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                TestSynagyButton(
                  onTap: () => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const PersonalComputerTestPage(),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:education/features/presentation/pages/informatica_test/computerdik_tarmaktar_test_page.dart';

import '../../../data/model/informatica_model.dart';
import '../../components/test_synagy_button.dart';

class ComputerdicTarmaktar extends StatelessWidget {
  const ComputerdicTarmaktar({
    Key? key,
    required this.informaticaTopics,
  }) : super(key: key);
  final InformaticaTopics informaticaTopics;

  @override
  Widget build(BuildContext context) {
    final computerTarmaktary =
        informaticaTopics.informatica[2].computerdicTarmaktar![0];
    return Scaffold(
      appBar: AppBar(
        title: Text("Информатика".toUpperCase()),
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
                  computerTarmaktary.tema1,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  computerTarmaktary.description1,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: '\n${computerTarmaktary.text2} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: computerTarmaktary.description2,
                      ),
                      TextSpan(
                        text: '\n${computerTarmaktary.text3} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: computerTarmaktary.description3,
                      ),
                      TextSpan(
                        text: '\n${computerTarmaktary.tema4} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: computerTarmaktary.description4,
                      ),
                      TextSpan(
                        text: '\n${computerTarmaktary.text5} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: computerTarmaktary.description5,
                      ),
                      TextSpan(
                        text: '\n${computerTarmaktary.tema6} ',
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: computerTarmaktary.description6,
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
                            const ComputerdikTarmaktarTestPage()),
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

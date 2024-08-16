import 'package:flutter/material.dart';

import 'package:education/features/presentation/pages/biology_test/mee_test_page.dart';

import '../../../data/model/biology_model.dart';
import '../../components/test_synagy_button.dart';

class Mee extends StatelessWidget {
  const Mee({Key? key, required this.biologyTopicsModel}) : super(key: key);
  final List<BiologyTopicsModel> biologyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Биология'.toUpperCase()),
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
                  biologyTopicsModel[3].aboutBrain![0].title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  biologyTopicsModel[3].aboutBrain![0].description0 ?? '',
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[3].aboutBrain![0].description1,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description2,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description4,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description3,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description5,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description6,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description7,
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description8,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text: biologyTopicsModel[3].aboutBrain![0].description9,
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description10,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description11,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                ////////////
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[3].aboutBrain![0].description12,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.start,
                ),
                const SizedBox(height: 3),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description13,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description14,
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description15,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description16,
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[3].aboutBrain![0].description17,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 250, 125, 80),
                            fontWeight: FontWeight.w600),
                      ),
                      TextSpan(
                        text:
                            " ${biologyTopicsModel[3].aboutBrain![0].description18}",
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
                      builder: (BuildContext context) => const MeeTestPage(),
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

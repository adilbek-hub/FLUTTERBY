import 'package:flutter/material.dart';

import 'package:education/features/presentation/pages/biology_test/nerv_sistemasy_test_page.dart';

import '../../../data/model/biology_model.dart';
import '../../components/test_synagy_button.dart';

class NervSistemasy extends StatelessWidget {
  const NervSistemasy({Key? key, required this.biologyTopicsModel})
      : super(key: key);
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
                  biologyTopicsModel[2].aboutNervous![0].title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  biologyTopicsModel[2].aboutNervous![0].description0,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  biologyTopicsModel[2].aboutNervous![0].description1,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[2].aboutNervous![0].description2,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  biologyTopicsModel[2].aboutNervous![0].description3,
                  style: const TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text.rich(
                  TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            biologyTopicsModel[2].aboutNervous![0].description4,
                      ),
                      TextSpan(
                        text:
                            biologyTopicsModel[2].aboutNervous![0].description5,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                Text(
                  biologyTopicsModel[2].aboutNervous![0].description6,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                TestSynagyButton(
                  onTap: () => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const NervSistemasyTestPage(),
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

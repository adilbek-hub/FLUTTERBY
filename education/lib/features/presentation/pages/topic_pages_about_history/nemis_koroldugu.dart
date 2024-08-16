import 'package:education/features/presentation/components/test_synagy_button.dart';
import 'package:flutter/material.dart';

import 'package:education/features/data/model/history_model.dart';

import 'package:education/features/presentation/pages/history_test/nemis_koroldugu_test_page.dart';

class NemisKoroldugu extends StatelessWidget {
  const NemisKoroldugu({Key? key, required this.historyTopicsModel})
      : super(key: key);
  final List<HistoryTopicsModel> historyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Тарых'.toUpperCase()),
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
                  historyTopicsModel[0].aboutGermans![0].title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                Text(
                  historyTopicsModel[0].aboutGermans![0].description,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                TestSynagyButton(
                  onTap: () => Navigator.push<void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>
                          const NemisKorolduguTestPage(),
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

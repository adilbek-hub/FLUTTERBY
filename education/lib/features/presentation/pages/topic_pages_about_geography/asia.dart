import 'package:flutter/material.dart';

import 'package:education/features/data/model/geography_model.dart';
import 'package:education/features/presentation/pages/geography_test/asia_test_page.dart';

import '../../components/test_synagy_button.dart';

class AsiaLesson extends StatelessWidget {
  const AsiaLesson({Key? key, required this.geographyTopicsModel})
      : super(key: key);
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            geographyTopicsModel[2].title,
            style: const TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          Text(
            geographyTopicsModel[2].asia![0].tema,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),
          Text(
            geographyTopicsModel[2].asia![1].title,
            style: const TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5),
          Image.network(
            geographyTopicsModel[2].asia![1].image!,
          ),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![1].tema,
          ),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![2].title,
            style: const TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![2].tema,
          ),
          Text(
            geographyTopicsModel[2].asia![3].title,
            style: const TextStyle(
              fontSize: 20,
            ),
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 5),
          Image.network(geographyTopicsModel[2].asia![3].image!),
          const SizedBox(height: 5),
          Text(
            geographyTopicsModel[2].asia![3].tema,
          ),
          const SizedBox(height: 5),
          TestSynagyButton(
            onTap: () => Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const AsiaTestPage(),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

import 'package:education/features/presentation/components/biology_bolumu/biologgy.dart';
import 'package:education/features/presentation/components/geography_bolumu/geography.dart';
import 'package:education/features/presentation/components/history_bolumu/history.dart';
import 'package:education/features/presentation/components/informatica_bolumu/informatica.dart';
import 'package:education/features/presentation/components/subject_card.dart';
import 'package:flutter/material.dart';

import '../../data/model/subjects_topics_model.dart';

class SubjectsView extends StatelessWidget {
  const SubjectsView({Key? key, required this.subjectsTopicsModel})
      : super(key: key);
  final List<SubjectsTopicsModel> subjectsTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          SubjectsCard(
            color: const Color(0xffFAADAD),
            text1: subjectsTopicsModel[0].name,
            image: subjectsTopicsModel[0].image,
            text2: subjectsTopicsModel[0].title,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Informatica(),
              ),
            ),
          ),
          SubjectsCard(
              color: const Color(0xffe4c9f9),
              text1: subjectsTopicsModel[1].name,
              image: subjectsTopicsModel[1].image,
              text2: subjectsTopicsModel[1].title,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Geography(),
                  ),
                );
              }),
          SubjectsCard(
            color: const Color(0xffAAF1CB),
            text1: subjectsTopicsModel[2].name,
            image: subjectsTopicsModel[2].image,
            text2: subjectsTopicsModel[2].title,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const History(),
                ),
              );
            },
          ),
          SubjectsCard(
            color: const Color(0xffFFE99D),
            text1: subjectsTopicsModel[3].name,
            image: subjectsTopicsModel[3].image,
            text2: subjectsTopicsModel[3].title,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Biologgy(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

import 'package:education/features/presentation/components/table_east.dart';
import 'package:education/features/presentation/components/table_north_balkan.dart';
import 'package:education/features/presentation/pages/geography_test/europe_test_page.dart';
import 'package:flutter/material.dart';
import '../../../data/model/geography_model.dart';
import '../../components/test_synagy_button.dart';

class EuropeCountriesLesson extends StatelessWidget {
  const EuropeCountriesLesson({
    Key? key,
    required this.geographyTopicsModel,
  }) : super(key: key);
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Text(
            geographyTopicsModel[0].title,
            style: const TextStyle(color: Color(0xff813597)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          NorthBalkanTable(
            geographyTopicsModel: geographyTopicsModel,
          ),
          const SizedBox(height: 10),
          Text(
            geographyTopicsModel[0].name2!,
            style: const TextStyle(color: Color(0xff813597)),
            textAlign: TextAlign.center,
          ),
          Text(
            geographyTopicsModel[0].chygushEuropeTitle1!,
          ),
          const SizedBox(height: 5),
          Text(geographyTopicsModel[0].chygushEuropeTitle2!),
          const SizedBox(height: 10),
          EastTable(
            geographyTopicsModel: geographyTopicsModel,
          ),
          const SizedBox(height: 10),
          Text(
            geographyTopicsModel[0].suroolor!,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w800,
            ),
          ),
          Text(
            geographyTopicsModel[0].suroo1!,
            style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.black54),
          ),
          Text(
            geographyTopicsModel[0].joop1!,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              geographyTopicsModel[0].suroo2!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
          ),
          Text(
            geographyTopicsModel[0].joop2!,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              geographyTopicsModel[0].suroo3!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
          ),
          Text(
            geographyTopicsModel[0].joop3!,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              geographyTopicsModel[0].suroo4!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
          ),
          Text(
            geographyTopicsModel[0].joop4!,
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              geographyTopicsModel[0].suroo5!,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Colors.black54),
            ),
          ),
          Text(
            geographyTopicsModel[0].joop5!,
          ),
          const SizedBox(height: 20),
          TestSynagyButton(
            onTap: () => Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const EuropeTestPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

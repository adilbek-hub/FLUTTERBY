import 'package:cached_network_image/cached_network_image.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:education/features/presentation/pages/geography_test/usa_test_page.dart';
import 'package:flutter/material.dart';
import '../../../data/model/geography_model.dart';
import '../../components/test_synagy_button.dart';

class UnitedStates extends StatelessWidget {
  const UnitedStates({super.key, required this.geographyTopicsModel});
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    final usa = geographyTopicsModel[1].usa;
    final tema = geographyTopicsModel[1].usa![1].tema;
    final usaStates = geographyTopicsModel[1].usa![1].usaStates;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(usa![0].title ?? ''),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          DropCapText(
            usa[0].tema,
            dropCap: DropCap(
              width: 130,
              height: 130,
              child: CachedNetworkImage(
                imageUrl: "${usa[0].image}",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.top,
            border: TableBorder.all(width: 0.2, color: Colors.black),
            children: [
              TableRow(children: [
                Text(
                  usaStates![0].adminCountry,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  usaStates[0].population,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
                Text(
                  usaStates[0].state,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[1].adminCountry,
                ),
                Text(
                  usaStates[1].population,
                ),
                Text(
                  usaStates[1].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[2].adminCountry,
                ),
                Text(
                  usaStates[2].population,
                ),
                Text(
                  usaStates[2].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[3].adminCountry,
                ),
                Text(
                  usaStates[3].population,
                ),
                Text(
                  usaStates[3].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[4].adminCountry,
                ),
                Text(
                  usaStates[4].population,
                ),
                Text(
                  usaStates[4].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[5].adminCountry,
                ),
                Text(
                  usaStates[5].population,
                ),
                Text(
                  usaStates[5].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[6].adminCountry,
                ),
                Text(
                  usaStates[6].population,
                ),
                Text(
                  usaStates[6].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[7].adminCountry,
                ),
                Text(
                  usaStates[7].population,
                ),
                Text(
                  usaStates[7].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[8].adminCountry,
                ),
                Text(
                  usaStates[8].population,
                ),
                Text(
                  usaStates[8].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[9].adminCountry,
                ),
                Text(
                  usaStates[9].population,
                ),
                Text(
                  usaStates[9].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[10].adminCountry,
                ),
                Text(
                  usaStates[10].population,
                ),
                Text(
                  usaStates[10].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[11].adminCountry,
                ),
                Text(
                  usaStates[11].population,
                ),
                Text(
                  usaStates[11].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[12].adminCountry,
                ),
                Text(
                  usaStates[12].population,
                ),
                Text(
                  usaStates[12].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[13].adminCountry,
                ),
                Text(
                  usaStates[13].population,
                ),
                Text(
                  usaStates[13].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[14].adminCountry,
                ),
                Text(
                  usaStates[14].population,
                ),
                Text(
                  usaStates[14].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[15].adminCountry,
                ),
                Text(
                  usaStates[15].population,
                ),
                Text(
                  usaStates[15].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[16].adminCountry,
                ),
                Text(
                  usaStates[16].population,
                ),
                Text(
                  usaStates[16].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[17].adminCountry,
                ),
                Text(
                  usaStates[17].population,
                ),
                Text(
                  usaStates[17].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[18].adminCountry,
                ),
                Text(
                  usaStates[18].population,
                ),
                Text(
                  usaStates[18].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[19].adminCountry,
                ),
                Text(
                  usaStates[19].population,
                ),
                Text(
                  usaStates[19].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[20].adminCountry,
                ),
                Text(
                  usaStates[20].population,
                ),
                Text(
                  usaStates[20].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[21].adminCountry,
                ),
                Text(
                  usaStates[21].population,
                ),
                Text(
                  usaStates[21].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[22].adminCountry,
                ),
                Text(
                  usaStates[22].population,
                ),
                Text(
                  usaStates[22].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[23].adminCountry,
                ),
                Text(
                  usaStates[23].population,
                ),
                Text(
                  usaStates[23].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[24].adminCountry,
                ),
                Text(
                  usaStates[24].population,
                ),
                Text(
                  usaStates[24].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[25].adminCountry,
                ),
                Text(
                  usaStates[25].population,
                ),
                Text(
                  usaStates[25].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[26].adminCountry,
                ),
                Text(
                  usaStates[26].population,
                ),
                Text(
                  usaStates[26].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[27].adminCountry,
                ),
                Text(
                  usaStates[27].population,
                ),
                Text(
                  usaStates[27].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[28].adminCountry,
                ),
                Text(
                  usaStates[28].population,
                ),
                Text(
                  usaStates[28].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[29].adminCountry,
                ),
                Text(
                  usaStates[29].population,
                ),
                Text(
                  usaStates[29].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[30].adminCountry,
                ),
                Text(
                  usaStates[30].population,
                ),
                Text(
                  usaStates[30].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[31].adminCountry,
                ),
                Text(
                  usaStates[31].population,
                ),
                Text(
                  usaStates[31].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[32].adminCountry,
                ),
                Text(
                  usaStates[32].population,
                ),
                Text(
                  usaStates[32].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[33].adminCountry,
                ),
                Text(
                  usaStates[33].population,
                ),
                Text(
                  usaStates[33].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[34].adminCountry,
                ),
                Text(
                  usaStates[34].population,
                ),
                Text(
                  usaStates[34].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[35].adminCountry,
                ),
                Text(
                  usaStates[35].population,
                ),
                Text(
                  usaStates[35].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[36].adminCountry,
                ),
                Text(
                  usaStates[36].population,
                ),
                Text(
                  usaStates[36].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[37].adminCountry,
                ),
                Text(
                  usaStates[37].population,
                ),
                Text(
                  usaStates[37].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[38].adminCountry,
                ),
                Text(
                  usaStates[38].population,
                ),
                Text(
                  usaStates[38].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[39].adminCountry,
                ),
                Text(
                  usaStates[39].population,
                ),
                Text(
                  usaStates[39].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[40].adminCountry,
                ),
                Text(
                  usaStates[40].population,
                ),
                Text(
                  usaStates[40].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[41].adminCountry,
                ),
                Text(
                  usaStates[41].population,
                ),
                Text(
                  usaStates[41].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[42].adminCountry,
                ),
                Text(
                  usaStates[42].population,
                ),
                Text(
                  usaStates[42].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[43].adminCountry,
                ),
                Text(
                  usaStates[43].population,
                ),
                Text(
                  usaStates[43].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[44].adminCountry,
                ),
                Text(
                  usaStates[44].population,
                ),
                Text(
                  usaStates[44].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[45].adminCountry,
                ),
                Text(
                  usaStates[45].population,
                ),
                Text(
                  usaStates[45].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[46].adminCountry,
                ),
                Text(
                  usaStates[46].population,
                ),
                Text(
                  usaStates[46].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[47].adminCountry,
                ),
                Text(
                  usaStates[47].population,
                ),
                Text(
                  usaStates[47].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[48].adminCountry,
                ),
                Text(
                  usaStates[48].population,
                ),
                Text(
                  usaStates[48].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[49].adminCountry,
                ),
                Text(
                  usaStates[49].population,
                ),
                Text(
                  usaStates[49].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[50].adminCountry,
                ),
                Text(
                  usaStates[50].population,
                ),
                Text(
                  usaStates[50].state,
                ),
              ]),
              TableRow(children: [
                Text(
                  usaStates[51].adminCountry,
                ),
                Text(
                  usaStates[51].population,
                ),
                Text(
                  usaStates[51].state,
                ),
              ]),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            usa[2].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            usa[2].text ?? '',
          ),
          const SizedBox(height: 10),
          Text(
            usa[3].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          DropCapText(
            usa[3].text ?? '',
            dropCap: DropCap(
              width: 130,
              height: 130,
              child: CachedNetworkImage(
                imageUrl: "${usa[3].image}",
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            usa[4].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            usa[4].text ?? '',
          ),
          const SizedBox(height: 10),
          Text(
            usa[5].tema,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            usa[5].text ?? '',
          ),
          const SizedBox(height: 5),
          TestSynagyButton(
            onTap: () => Navigator.push<void>(
              context,
              MaterialPageRoute<void>(
                builder: (BuildContext context) => const UsaTestPage(),
              ),
            ),
          ),
          const SizedBox(height: 5),
        ]),
      ),
    );
  }
}

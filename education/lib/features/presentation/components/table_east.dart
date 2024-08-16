import 'package:flutter/material.dart';

import 'package:education/features/data/model/geography_model.dart';

class EastTable extends StatelessWidget {
  const EastTable({
    Key? key,
    required this.geographyTopicsModel,
  }) : super(key: key);
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: const Color(0xffdddddd)),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry1!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry2!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(
                geographyTopicsModel[0].eastCountry3!,
              ),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry4!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry5!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry6!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Center(child: Text(geographyTopicsModel[0].eastCountry7!)),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry8!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry9!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry10!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry11!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry12!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry13!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry14!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry15!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry16!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(
                geographyTopicsModel[0].eastCountry17!,
              ),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry18!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry19!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry20!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child:
                  Center(child: Text(geographyTopicsModel[0].eastCountry21!)),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry22!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry23!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry24!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry25!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry26!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry27!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry28!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry29!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry30!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry31!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry32!),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(width: 1.0, color: Colors.grey),
            ),
          ),
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry33!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].eastCountry34!),
            ),
          ],
        ),
      ],
    );
  }
}

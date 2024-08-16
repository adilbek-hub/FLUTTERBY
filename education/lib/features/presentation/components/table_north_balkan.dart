import 'package:education/features/data/model/geography_model.dart';
import 'package:flutter/material.dart';

class NorthBalkanTable extends StatelessWidget {
  const NorthBalkanTable({Key? key, required this.geographyTopicsModel})
      : super(key: key);
  final List<GeographyTopicsModel> geographyTopicsModel;

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(color: const Color(0xffdddddd)),
      children: [
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry1!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry2!),
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
                geographyTopicsModel[0].northAndBalcanCountry3!,
              ),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry4!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry5!),
            ),
            const TableCell(
              child: Text('Швеция (Стокгольм)'),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Center(
                  child: Text(geographyTopicsModel[0].northAndBalcanCountry6!)),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry7!),
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
              child: Text(geographyTopicsModel[0].northAndBalcanCountry8!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry9!),
            ),
          ],
        ),
        TableRow(
          children: [
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry10!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry11!),
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
              child: Text(geographyTopicsModel[0].northAndBalcanCountry12!),
            ),
            TableCell(
              child: Text(geographyTopicsModel[0].northAndBalcanCountry13!),
            ),
          ],
        ),
      ],
    );
  }
}

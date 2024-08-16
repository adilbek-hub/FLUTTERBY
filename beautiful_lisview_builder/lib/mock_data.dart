import 'package:flutter/material.dart';

class DataModel {
  DataModel({required this.title, required this.description});
  final String title;
  final String description;
}

final colors = Colors.accents.toList();

final todoList = [
  DataModel(title: 'BrignStorming session', description: '11:00 PM'),
  DataModel(title: 'BrignStorming session', description: '11:00 PM'),
  DataModel(title: 'BrignStorming session', description: '11:00 PM'),
  DataModel(title: 'BrignStorming session', description: '11:00 PM'),
  DataModel(title: 'BrignStorming session', description: '11:00 PM'),
];

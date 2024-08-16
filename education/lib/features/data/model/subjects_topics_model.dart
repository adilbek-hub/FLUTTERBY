// To parse this JSON data, do
//
//     final subjectsTopicsModel = subjectsTopicsModelFromJson(jsonString);

import 'dart:convert';

List<SubjectsTopicsModel> subjectsTopicsModelFromJson(String str) =>
    List<SubjectsTopicsModel>.from(
        json.decode(str).map((x) => SubjectsTopicsModel.fromJson(x)));

String subjectsTopicsModelToJson(List<SubjectsTopicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SubjectsTopicsModel {
  String name;
  String image;
  String title;

  SubjectsTopicsModel({
    required this.name,
    required this.image,
    required this.title,
  });

  factory SubjectsTopicsModel.fromJson(Map<String, dynamic> json) =>
      SubjectsTopicsModel(
        name: json["name"],
        image: json["image"],
        title: json["title"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "title": title,
      };
}

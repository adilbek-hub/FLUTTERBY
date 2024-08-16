// To parse this JSON data, do
//
//     final historyTopicsModel = historyTopicsModelFromJson(jsonString);

import 'dart:convert';

List<HistoryTopicsModel> historyTopicsModelFromJson(String str) =>
    List<HistoryTopicsModel>.from(
        json.decode(str).map((x) => HistoryTopicsModel.fromJson(x)));

String historyTopicsModelToJson(List<HistoryTopicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HistoryTopicsModel {
  int id;
  String image;
  String title;
  String description;
  List<About>? aboutGermans;
  List<About>? aboutRoma;
  List<About>? aboutOldGermans;
  List<About>? aboutOldItalia;

  HistoryTopicsModel({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    this.aboutGermans,
    this.aboutRoma,
    this.aboutOldGermans,
    this.aboutOldItalia,
  });

  factory HistoryTopicsModel.fromJson(Map<String, dynamic> json) =>
      HistoryTopicsModel(
        id: json["id"],
        image: json["image"],
        title: json["title"],
        description: json["description"],
        aboutGermans: json["aboutGermans"] == null
            ? []
            : List<About>.from(
                json["aboutGermans"]!.map((x) => About.fromJson(x))),
        aboutRoma: json["aboutRoma"] == null
            ? []
            : List<About>.from(
                json["aboutRoma"]!.map((x) => About.fromJson(x))),
        aboutOldGermans: json["aboutOldGermans"] == null
            ? []
            : List<About>.from(
                json["aboutOldGermans"]!.map((x) => About.fromJson(x))),
        aboutOldItalia: json["aboutOldItalia"] == null
            ? []
            : List<About>.from(
                json["aboutOldItalia"]!.map((x) => About.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "title": title,
        "description": description,
        "aboutGermans": aboutGermans == null
            ? []
            : List<dynamic>.from(aboutGermans!.map((x) => x.toJson())),
        "aboutRoma": aboutRoma == null
            ? []
            : List<dynamic>.from(aboutRoma!.map((x) => x.toJson())),
        "aboutOldGermans": aboutOldGermans == null
            ? []
            : List<dynamic>.from(aboutOldGermans!.map((x) => x.toJson())),
        "aboutOldItalia": aboutOldItalia == null
            ? []
            : List<dynamic>.from(aboutOldItalia!.map((x) => x.toJson())),
      };
}

class About {
  String title;
  String description;

  About({
    required this.title,
    required this.description,
  });

  factory About.fromJson(Map<String, dynamic> json) => About(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}

import 'dart:convert';

List<UsaTestToicsModel> usaToicsModelFromJson(String str) =>
    List<UsaTestToicsModel>.from(
        json.decode(str).map((x) => UsaTestToicsModel.fromJson(x)));

class UsaTestToicsModel {
  int id;
  String name;
  String title;
  String guestion;
  String image;
  List<Option> options;

  UsaTestToicsModel({
    required this.id,
    required this.name,
    required this.title,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory UsaTestToicsModel.fromJson(Map<String, dynamic> json) =>
      UsaTestToicsModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        guestion: json["guestion"],
        image: json["image"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );
}

class Option {
  String answer;
  bool correct;

  Option({
    required this.answer,
    required this.correct,
  });

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        answer: json["answer"],
        correct: json["correct"],
      );
}

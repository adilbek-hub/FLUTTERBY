import 'dart:convert';

List<AsiaTestToicsModel> asiaTestToicsModelFromJson(String str) =>
    List<AsiaTestToicsModel>.from(
        json.decode(str).map((x) => AsiaTestToicsModel.fromJson(x)));

class AsiaTestToicsModel {
  int id;
  String name;
  String title;
  String guestion;
  String image;
  List<Option> options;

  AsiaTestToicsModel({
    required this.id,
    required this.name,
    required this.title,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory AsiaTestToicsModel.fromJson(Map<String, dynamic> json) =>
      AsiaTestToicsModel(
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

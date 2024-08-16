import 'dart:convert';

List<ComputerdikTarmaktarTestModel> computerdikTarmaktarTestModelFromJson(
        String str) =>
    List<ComputerdikTarmaktarTestModel>.from(
        json.decode(str).map((x) => ComputerdikTarmaktarTestModel.fromJson(x)));

String computerdikTarmaktarTestModelToJson(
        List<ComputerdikTarmaktarTestModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ComputerdikTarmaktarTestModel {
  int id;
  String name;
  String title;
  String guestion;
  String image;
  List<Option> options;

  ComputerdikTarmaktarTestModel({
    required this.id,
    required this.name,
    required this.title,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory ComputerdikTarmaktarTestModel.fromJson(Map<String, dynamic> json) =>
      ComputerdikTarmaktarTestModel(
        id: json["id"],
        name: json["name"],
        title: json["title"],
        guestion: json["guestion"],
        image: json["image"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "title": title,
        "guestion": guestion,
        "image": image,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
      };
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

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "correct": correct,
      };
}

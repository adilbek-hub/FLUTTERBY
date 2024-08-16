import 'dart:convert';

List<EuropeCapitalsToicsModel> europeCapitalsToicsModelFromJson(String str) =>
    List<EuropeCapitalsToicsModel>.from(
        json.decode(str).map((x) => EuropeCapitalsToicsModel.fromJson(x)));

class EuropeCapitalsToicsModel {
  int id;
  String name;
  String title;
  String guestion;
  String image;
  List<Option> options;

  EuropeCapitalsToicsModel({
    required this.id,
    required this.name,
    required this.title,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory EuropeCapitalsToicsModel.fromJson(Map<String, dynamic> json) =>
      EuropeCapitalsToicsModel(
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
  Option({required this.answer, required this.correct});
  String answer;
  bool correct;

  factory Option.fromJson(Map<String, dynamic> json) =>
      Option(answer: json["answer"], correct: json["correct"]);

  Map<String, dynamic> toJson() => {"answer": answer, "correct": correct};
}

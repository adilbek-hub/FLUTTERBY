import 'dart:convert';

InformaticaTopics informaticaTopicsFromJson(String str) =>
    InformaticaTopics.fromJson(json.decode(str));

String informaticaTopicsToJson(InformaticaTopics data) =>
    json.encode(data.toJson());

class InformaticaTopics {
  List<InformaticaElement> informatica;

  InformaticaTopics({
    required this.informatica,
  });

  factory InformaticaTopics.fromJson(Map<String, dynamic> json) =>
      InformaticaTopics(
        informatica: List<InformaticaElement>.from(
            json["informatica"].map((x) => InformaticaElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
      };
}

class InformaticaElement {
  String title;
  String description;
  String image;
  List<ComputerPart>? computerParts;
  List<ComputerdicTarmaktars>? personalComputer;
  List<ComputerdicTarmaktars>? computerdicTarmaktar;
  List<ComputerdicTarmaktars>? sistemalykProgrammalykKamsyzdoo;

  InformaticaElement({
    required this.title,
    required this.description,
    required this.image,
    this.computerParts,
    this.personalComputer,
    this.computerdicTarmaktar,
    this.sistemalykProgrammalykKamsyzdoo,
  });

  factory InformaticaElement.fromJson(Map<String, dynamic> json) =>
      InformaticaElement(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        computerParts: json["computerParts"] == null
            ? []
            : List<ComputerPart>.from(
                json["computerParts"]!.map((x) => ComputerPart.fromJson(x))),
        personalComputer: json["personal_computer"] == null
            ? []
            : List<ComputerdicTarmaktars>.from(json["personal_computer"]!
                .map((x) => ComputerdicTarmaktars.fromJson(x))),
        computerdicTarmaktar: json["computerdic_tarmaktar"] == null
            ? []
            : List<ComputerdicTarmaktars>.from(json["computerdic_tarmaktar"]!
                .map((x) => ComputerdicTarmaktars.fromJson(x))),
        sistemalykProgrammalykKamsyzdoo:
            json["sistemalyk_programmalyk_kamsyzdoo"] == null
                ? []
                : List<ComputerdicTarmaktars>.from(
                    json["sistemalyk_programmalyk_kamsyzdoo"]!
                        .map((x) => ComputerdicTarmaktars.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
        "computerParts": computerParts == null
            ? []
            : List<dynamic>.from(computerParts!.map((x) => x.toJson())),
        "personal_computer": personalComputer == null
            ? []
            : List<dynamic>.from(personalComputer!.map((x) => x.toJson())),
        "computerdic_tarmaktar": computerdicTarmaktar == null
            ? []
            : List<dynamic>.from(computerdicTarmaktar!.map((x) => x.toJson())),
        "sistemalyk_programmalyk_kamsyzdoo":
            sistemalykProgrammalykKamsyzdoo == null
                ? []
                : List<dynamic>.from(
                    sistemalykProgrammalykKamsyzdoo!.map((x) => x.toJson())),
      };
}

class ComputerPart {
  String tema;
  String name;
  String image;
  String text;

  ComputerPart({
    required this.tema,
    required this.name,
    required this.image,
    required this.text,
  });

  factory ComputerPart.fromJson(Map<String, dynamic> json) => ComputerPart(
        tema: json["tema"],
        name: json["name"],
        image: json["image"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "tema": tema,
        "name": name,
        "image": image,
        "text": text,
      };
}

class ComputerdicTarmaktars {
  String subjectName;
  String tema1;
  String description1;
  String text2;
  String description2;
  String text3;
  String description3;
  String tema4;
  String description4;
  String text5;
  String description5;
  String tema6;
  String description6;
  String? tema7;
  String? description7;
  String? tema8;
  String? description8;

  ComputerdicTarmaktars({
    required this.subjectName,
    required this.tema1,
    required this.description1,
    required this.text2,
    required this.description2,
    required this.text3,
    required this.description3,
    required this.tema4,
    required this.description4,
    required this.text5,
    required this.description5,
    required this.tema6,
    required this.description6,
    this.tema7,
    this.description7,
    this.tema8,
    this.description8,
  });

  factory ComputerdicTarmaktars.fromJson(Map<String, dynamic> json) =>
      ComputerdicTarmaktars(
        subjectName: json["subject_name"],
        tema1: json["tema1"],
        description1: json["description1"],
        text2: json["text2"],
        description2: json["description2"],
        text3: json["text3"],
        description3: json["description3"],
        tema4: json["tema4"],
        description4: json["description4"],
        text5: json["text5"],
        description5: json["description5"],
        tema6: json["tema6"],
        description6: json["description6"],
        tema7: json["tema7"],
        description7: json["description7"],
        tema8: json["tema8"],
        description8: json["description8"],
      );

  Map<String, dynamic> toJson() => {
        "subject_name": subjectName,
        "tema1": tema1,
        "description1": description1,
        "text2": text2,
        "description2": description2,
        "text3": text3,
        "description3": description3,
        "tema4": tema4,
        "description4": description4,
        "text5": text5,
        "description5": description5,
        "tema6": tema6,
        "description6": description6,
        "tema7": tema7,
        "description7": description7,
        "tema8": tema8,
        "description8": description8,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

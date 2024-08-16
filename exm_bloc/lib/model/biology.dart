import 'dart:convert';

List<BiologyTopicsModel> biologyTopicsModelFromJson(String str) =>
    List<BiologyTopicsModel>.from(
        json.decode(str).map((x) => BiologyTopicsModel.fromJson(x)));

String biologyTopicsModelToJson(List<BiologyTopicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class BiologyTopicsModel {
  int id;
  String title;
  String description;
  String image;
  List<About>? aboutManAndAnimal;
  List<AboutKletka>? aboutKletka;
  List<AboutNervous>? aboutNervous;
  List<About>? aboutBrain;

  BiologyTopicsModel({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    this.aboutManAndAnimal,
    this.aboutKletka,
    this.aboutNervous,
    this.aboutBrain,
  });

  factory BiologyTopicsModel.fromJson(Map<String, dynamic> json) =>
      BiologyTopicsModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        aboutManAndAnimal: json["aboutManAndAnimal"] == null
            ? []
            : List<About>.from(
                json["aboutManAndAnimal"]!.map((x) => About.fromJson(x))),
        aboutKletka: json["aboutKletka"] == null
            ? []
            : List<AboutKletka>.from(
                json["aboutKletka"]!.map((x) => AboutKletka.fromJson(x))),
        aboutNervous: json["aboutNervous"] == null
            ? []
            : List<AboutNervous>.from(
                json["aboutNervous"]!.map((x) => AboutNervous.fromJson(x))),
        aboutBrain: json["aboutBrain"] == null
            ? []
            : List<About>.from(
                json["aboutBrain"]!.map((x) => About.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image": image,
        "aboutManAndAnimal": aboutManAndAnimal == null
            ? []
            : List<dynamic>.from(aboutManAndAnimal!.map((x) => x.toJson())),
        "aboutKletka": aboutKletka == null
            ? []
            : List<dynamic>.from(aboutKletka!.map((x) => x.toJson())),
        "aboutNervous": aboutNervous == null
            ? []
            : List<dynamic>.from(aboutNervous!.map((x) => x.toJson())),
        "aboutBrain": aboutBrain == null
            ? []
            : List<dynamic>.from(aboutBrain!.map((x) => x.toJson())),
      };
}

class About {
  String title;
  String? description0;
  String description1;
  String description2;
  String description3;
  String description4;
  String description5;
  String description6;
  String description7;
  String description8;
  String description9;
  String description10;
  String description11;
  String description12;
  String description13;
  String description14;
  String description15;
  String description16;
  String description17;
  String description18;
  String? description19;
  String? description20;
  String? description21;
  String? description22;

  About({
    required this.title,
    this.description0,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
    required this.description6,
    required this.description7,
    required this.description8,
    required this.description9,
    required this.description10,
    required this.description11,
    required this.description12,
    required this.description13,
    required this.description14,
    required this.description15,
    required this.description16,
    required this.description17,
    required this.description18,
    this.description19,
    this.description20,
    this.description21,
    this.description22,
  });

  factory About.fromJson(Map<String, dynamic> json) => About(
        title: json["title"],
        description0: json["description0"],
        description1: json["description1"],
        description2: json["description2"],
        description3: json["description3"],
        description4: json["description4"],
        description5: json["description5"],
        description6: json["description6"],
        description7: json["description7"],
        description8: json["description8"],
        description9: json["description9"],
        description10: json["description10"],
        description11: json["description11"],
        description12: json["description12"],
        description13: json["description13"],
        description14: json["description14"],
        description15: json["description15"],
        description16: json["description16"],
        description17: json["description17"],
        description18: json["description18"],
        description19: json["description19"],
        description20: json["description20"],
        description21: json["description21"],
        description22: json["description22"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description0": description0,
        "description1": description1,
        "description2": description2,
        "description3": description3,
        "description4": description4,
        "description5": description5,
        "description6": description6,
        "description7": description7,
        "description8": description8,
        "description9": description9,
        "description10": description10,
        "description11": description11,
        "description12": description12,
        "description13": description13,
        "description14": description14,
        "description15": description15,
        "description16": description16,
        "description17": description17,
        "description18": description18,
        "description19": description19,
        "description20": description20,
        "description21": description21,
        "description22": description22,
      };
}

class AboutKletka {
  String title;
  String description0;
  String description1;
  String description2;
  String description3;
  String description4;
  String description5;
  String description6;
  String description7;
  String description8;
  String description9;
  String description10;

  AboutKletka({
    required this.title,
    required this.description0,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
    required this.description6,
    required this.description7,
    required this.description8,
    required this.description9,
    required this.description10,
  });

  factory AboutKletka.fromJson(Map<String, dynamic> json) => AboutKletka(
        title: json["title"],
        description0: json["description0"],
        description1: json["description1"],
        description2: json["description2"],
        description3: json["description3"],
        description4: json["description4"],
        description5: json["description5"],
        description6: json["description6"],
        description7: json["description7"],
        description8: json["description8"],
        description9: json["description9"],
        description10: json["description10"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description0": description0,
        "description1": description1,
        "description2": description2,
        "description3": description3,
        "description4": description4,
        "description5": description5,
        "description6": description6,
        "description7": description7,
        "description8": description8,
        "description9": description9,
        "description10": description10,
      };
}

class AboutNervous {
  String title;
  String description0;
  String description1;
  String description2;
  String description3;
  String description4;
  String description5;
  String description6;

  AboutNervous({
    required this.title,
    required this.description0,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.description4,
    required this.description5,
    required this.description6,
  });

  factory AboutNervous.fromJson(Map<String, dynamic> json) => AboutNervous(
        title: json["title"],
        description0: json["description0"],
        description1: json["description1"],
        description2: json["description2"],
        description3: json["description3"],
        description4: json["description4"],
        description5: json["description5"],
        description6: json["description6"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description0": description0,
        "description1": description1,
        "description2": description2,
        "description3": description3,
        "description4": description4,
        "description5": description5,
        "description6": description6,
      };
}

// To parse this JSON data, do
//
//     final testToicsModel = testToicsModelFromJson(jsonString);

import 'dart:convert';

List<TestToicsModel> testToicsModelFromJson(String str) =>
    List<TestToicsModel>.from(
        json.decode(str).map((x) => TestToicsModel.fromJson(x)));

String testToicsModelToJson(List<TestToicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TestToicsModel {
  List<Informatica> informatica;
  List<History> history;
  List<Geography> geography;
  List<Biology> biology;

  TestToicsModel({
    required this.informatica,
    required this.history,
    required this.geography,
    required this.biology,
  });

  factory TestToicsModel.fromJson(Map<String, dynamic> json) => TestToicsModel(
        informatica: List<Informatica>.from(
            json["Informatica"].map((x) => Informatica.fromJson(x))),
        history:
            List<History>.from(json["History"].map((x) => History.fromJson(x))),
        geography: List<Geography>.from(
            json["Geography"].map((x) => Geography.fromJson(x))),
        biology:
            List<Biology>.from(json["Biology"].map((x) => Biology.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "Informatica": List<dynamic>.from(informatica.map((x) => x.toJson())),
        "History": List<dynamic>.from(history.map((x) => x.toJson())),
        "Geography": List<dynamic>.from(geography.map((x) => x.toJson())),
        "Biology": List<dynamic>.from(biology.map((x) => x.toJson())),
      };
}

class Biology {
  List<Kletka> manAnimal;
  List<Kletka> kletka;
  List<Kletka> nerv;
  List<Kletka> mee;

  Biology({
    required this.manAnimal,
    required this.kletka,
    required this.nerv,
    required this.mee,
  });

  factory Biology.fromJson(Map<String, dynamic> json) => Biology(
        manAnimal: List<Kletka>.from(
            json["man_animal"].map((x) => Kletka.fromJson(x))),
        kletka:
            List<Kletka>.from(json["kletka"].map((x) => Kletka.fromJson(x))),
        nerv: List<Kletka>.from(json["nerv"].map((x) => Kletka.fromJson(x))),
        mee: List<Kletka>.from(json["mee"].map((x) => Kletka.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "man_animal": List<dynamic>.from(manAnimal.map((x) => x.toJson())),
        "kletka": List<dynamic>.from(kletka.map((x) => x.toJson())),
        "nerv": List<dynamic>.from(nerv.map((x) => x.toJson())),
        "mee": List<dynamic>.from(mee.map((x) => x.toJson())),
      };
}

class Kletka {
  int id;
  Name name;
  String title;
  String guestion;
  String image;
  List<Option> options;

  Kletka({
    required this.id,
    required this.name,
    required this.title,
    required this.guestion,
    required this.image,
    required this.options,
  });

  factory Kletka.fromJson(Map<String, dynamic> json) => Kletka(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        title: json["title"],
        guestion: json["guestion"],
        image: json["image"],
        options:
            List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "title": title,
        "guestion": guestion,
        "image": image,
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
      };
}

// ignore: constant_identifier_names
enum Name { EMPTY, FLUFFY, NAME, PURPLE }

final nameValues = EnumValues({
  "Биология": Name.EMPTY,
  "Информатика": Name.FLUFFY,
  "География": Name.NAME,
  "Тарых": Name.PURPLE
});

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

class Geography {
  List<Kletka> europeCapital;
  List<Kletka> usa;
  List<Kletka> asia;
  List<Kletka> worldCapitals;

  Geography({
    required this.europeCapital,
    required this.usa,
    required this.asia,
    required this.worldCapitals,
  });

  factory Geography.fromJson(Map<String, dynamic> json) => Geography(
        europeCapital: List<Kletka>.from(
            json["europe_capital"].map((x) => Kletka.fromJson(x))),
        usa: List<Kletka>.from(json["usa"].map((x) => Kletka.fromJson(x))),
        asia: List<Kletka>.from(json["asia"].map((x) => Kletka.fromJson(x))),
        worldCapitals: List<Kletka>.from(
            json["world_capitals"].map((x) => Kletka.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "europe_capital":
            List<dynamic>.from(europeCapital.map((x) => x.toJson())),
        "usa": List<dynamic>.from(usa.map((x) => x.toJson())),
        "asia": List<dynamic>.from(asia.map((x) => x.toJson())),
        "world_capitals":
            List<dynamic>.from(worldCapitals.map((x) => x.toJson())),
      };
}

class History {
  List<Kletka> nemisKoroldugu;
  List<Kletka> baiyrkyGermandyktar;
  List<Kletka> italiaVX;
  List<Kletka> rim;

  History({
    required this.nemisKoroldugu,
    required this.baiyrkyGermandyktar,
    required this.italiaVX,
    required this.rim,
  });

  factory History.fromJson(Map<String, dynamic> json) => History(
        nemisKoroldugu: List<Kletka>.from(
            json["nemis_koroldugu"].map((x) => Kletka.fromJson(x))),
        baiyrkyGermandyktar: List<Kletka>.from(
            json["baiyrky_germandyktar"].map((x) => Kletka.fromJson(x))),
        italiaVX: List<Kletka>.from(
            json["italia_V_X"].map((x) => Kletka.fromJson(x))),
        rim: List<Kletka>.from(json["rim"].map((x) => Kletka.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nemis_koroldugu":
            List<dynamic>.from(nemisKoroldugu.map((x) => x.toJson())),
        "baiyrky_germandyktar":
            List<dynamic>.from(baiyrkyGermandyktar.map((x) => x.toJson())),
        "italia_V_X": List<dynamic>.from(italiaVX.map((x) => x.toJson())),
        "rim": List<dynamic>.from(rim.map((x) => x.toJson())),
      };
}

class Informatica {
  List<Kletka> personalComputer;
  List<Kletka> computerdikTarmaktar;
  List<Kletka> sistemalykComputer;

  Informatica({
    required this.personalComputer,
    required this.computerdikTarmaktar,
    required this.sistemalykComputer,
  });

  factory Informatica.fromJson(Map<String, dynamic> json) => Informatica(
        personalComputer: List<Kletka>.from(
            json["personal_computer"].map((x) => Kletka.fromJson(x))),
        computerdikTarmaktar: List<Kletka>.from(
            json["computerdik_tarmaktar"].map((x) => Kletka.fromJson(x))),
        sistemalykComputer: List<Kletka>.from(
            json["sistemalyk_computer"].map((x) => Kletka.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "personal_computer":
            List<dynamic>.from(personalComputer.map((x) => x.toJson())),
        "computerdik_tarmaktar":
            List<dynamic>.from(computerdikTarmaktar.map((x) => x.toJson())),
        "sistemalyk_computer":
            List<dynamic>.from(sistemalykComputer.map((x) => x.toJson())),
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

import 'dart:convert';

List<GeographyTopicsModel> geographyTopicsModelFromJson(String str) =>
    List<GeographyTopicsModel>.from(
        json.decode(str).map((x) => GeographyTopicsModel.fromJson(x)));

String geographyTopicsModelToJson(List<GeographyTopicsModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class GeographyTopicsModel {
  dynamic id;
  String title;
  String description;
  String image;
  String? name1;
  String? northAndBalcanCountry1;
  String? northAndBalcanCountry2;
  String? northAndBalcanCountry3;
  String? northAndBalcanCountry4;
  String? northAndBalcanCountry5;
  String? northAndBalcanCountry6;
  String? northAndBalcanCountry7;
  String? northAndBalcanCountry8;
  String? northAndBalcanCountry9;
  String? northAndBalcanCountry10;
  String? northAndBalcanCountry11;
  String? northAndBalcanCountry12;
  String? northAndBalcanCountry13;
  String? name2;
  String? chygushEuropeTitle1;
  String? chygushEuropeTitle2;
  String? eastCountry1;
  String? eastCountry2;
  String? eastCountry3;
  String? eastCountry4;
  String? eastCountry5;
  String? eastCountry6;
  String? eastCountry7;
  String? eastCountry8;
  String? eastCountry9;
  String? eastCountry10;
  String? eastCountry11;
  String? eastCountry12;
  String? eastCountry13;
  String? eastCountry14;
  String? eastCountry15;
  String? eastCountry16;
  String? eastCountry17;
  String? eastCountry18;
  String? eastCountry19;
  String? eastCountry20;
  String? eastCountry21;
  String? eastCountry22;
  String? eastCountry23;
  String? eastCountry24;
  String? eastCountry25;
  String? eastCountry26;
  String? eastCountry27;
  String? eastCountry28;
  String? eastCountry29;
  String? eastCountry30;
  String? eastCountry31;
  String? eastCountry32;
  String? eastCountry33;
  String? eastCountry34;
  String? suroolor;
  String? suroo1;
  String? joop1;
  String? suroo2;
  String? joop2;
  String? suroo3;
  String? joop3;
  String? suroo4;
  String? joop4;
  String? suroo5;
  String? joop5;
  List<Usa>? usa;
  List<Asia>? asia;

  GeographyTopicsModel({
    this.id,
    required this.title,
    required this.description,
    required this.image,
    this.name1,
    this.northAndBalcanCountry1,
    this.northAndBalcanCountry2,
    this.northAndBalcanCountry3,
    this.northAndBalcanCountry4,
    this.northAndBalcanCountry5,
    this.northAndBalcanCountry6,
    this.northAndBalcanCountry7,
    this.northAndBalcanCountry8,
    this.northAndBalcanCountry9,
    this.northAndBalcanCountry10,
    this.northAndBalcanCountry11,
    this.northAndBalcanCountry12,
    this.northAndBalcanCountry13,
    this.name2,
    this.chygushEuropeTitle1,
    this.chygushEuropeTitle2,
    this.eastCountry1,
    this.eastCountry2,
    this.eastCountry3,
    this.eastCountry4,
    this.eastCountry5,
    this.eastCountry6,
    this.eastCountry7,
    this.eastCountry8,
    this.eastCountry9,
    this.eastCountry10,
    this.eastCountry11,
    this.eastCountry12,
    this.eastCountry13,
    this.eastCountry14,
    this.eastCountry15,
    this.eastCountry16,
    this.eastCountry17,
    this.eastCountry18,
    this.eastCountry19,
    this.eastCountry20,
    this.eastCountry21,
    this.eastCountry22,
    this.eastCountry23,
    this.eastCountry24,
    this.eastCountry25,
    this.eastCountry26,
    this.eastCountry27,
    this.eastCountry28,
    this.eastCountry29,
    this.eastCountry30,
    this.eastCountry31,
    this.eastCountry32,
    this.eastCountry33,
    this.eastCountry34,
    this.suroolor,
    this.suroo1,
    this.joop1,
    this.suroo2,
    this.joop2,
    this.suroo3,
    this.joop3,
    this.suroo4,
    this.joop4,
    this.suroo5,
    this.joop5,
    this.usa,
    this.asia,
  });

  factory GeographyTopicsModel.fromJson(Map<String, dynamic> json) =>
      GeographyTopicsModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        image: json["image"],
        name1: json["name1"],
        northAndBalcanCountry1: json["north_and_balcan_country1"],
        northAndBalcanCountry2: json["north_and_balcan_country2"],
        northAndBalcanCountry3: json["north_and_balcan_country3"],
        northAndBalcanCountry4: json["north_and_balcan_country4"],
        northAndBalcanCountry5: json["north_and_balcan_country5"],
        northAndBalcanCountry6: json["north_and_balcan_country6"],
        northAndBalcanCountry7: json["north_and_balcan_country7"],
        northAndBalcanCountry8: json["north_and_balcan_country8"],
        northAndBalcanCountry9: json["north_and_balcan_country9"],
        northAndBalcanCountry10: json["north_and_balcan_country10"],
        northAndBalcanCountry11: json["north_and_balcan_country11"],
        northAndBalcanCountry12: json["north_and_balcan_country12"],
        northAndBalcanCountry13: json["north_and_balcan_country13"],
        name2: json["name2"],
        chygushEuropeTitle1: json["chygush_europe_title1"],
        chygushEuropeTitle2: json["chygush_europe_title2"],
        eastCountry1: json["east_country1"],
        eastCountry2: json["east_country2"],
        eastCountry3: json["east_country3"],
        eastCountry4: json["east_country4"],
        eastCountry5: json["east_country5"],
        eastCountry6: json["east_country6"],
        eastCountry7: json["east_country7"],
        eastCountry8: json["east_country8"],
        eastCountry9: json["east_country9"],
        eastCountry10: json["east_country10"],
        eastCountry11: json["east_country11"],
        eastCountry12: json["east_country12"],
        eastCountry13: json["east_country13"],
        eastCountry14: json["east_country14"],
        eastCountry15: json["east_country15"],
        eastCountry16: json["east_country16"],
        eastCountry17: json["east_country17"],
        eastCountry18: json["east_country18"],
        eastCountry19: json["east_country19"],
        eastCountry20: json["east_country20"],
        eastCountry21: json["east_country21"],
        eastCountry22: json["east_country22"],
        eastCountry23: json["east_country23"],
        eastCountry24: json["east_country24"],
        eastCountry25: json["east_country25"],
        eastCountry26: json["east_country26"],
        eastCountry27: json["east_country27"],
        eastCountry28: json["east_country28"],
        eastCountry29: json["east_country29"],
        eastCountry30: json["east_country30"],
        eastCountry31: json["east_country31"],
        eastCountry32: json["east_country32"],
        eastCountry33: json["east_country33"],
        eastCountry34: json["east_country34"],
        suroolor: json["suroolor"],
        suroo1: json["suroo1"],
        joop1: json["joop1"],
        suroo2: json["suroo2"],
        joop2: json["joop2"],
        suroo3: json["suroo3"],
        joop3: json["joop3"],
        suroo4: json["suroo4"],
        joop4: json["joop4"],
        suroo5: json["suroo5"],
        joop5: json["joop5"],
        usa: json["usa"] == null
            ? []
            : List<Usa>.from(json["usa"]!.map((x) => Usa.fromJson(x))),
        asia: json["asia"] == null
            ? []
            : List<Asia>.from(json["asia"]!.map((x) => Asia.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "image": image,
        "name1": name1,
        "north_and_balcan_country1": northAndBalcanCountry1,
        "north_and_balcan_country2": northAndBalcanCountry2,
        "north_and_balcan_country3": northAndBalcanCountry3,
        "north_and_balcan_country4": northAndBalcanCountry4,
        "north_and_balcan_country5": northAndBalcanCountry5,
        "north_and_balcan_country6": northAndBalcanCountry6,
        "north_and_balcan_country7": northAndBalcanCountry7,
        "north_and_balcan_country8": northAndBalcanCountry8,
        "north_and_balcan_country9": northAndBalcanCountry9,
        "north_and_balcan_country10": northAndBalcanCountry10,
        "north_and_balcan_country11": northAndBalcanCountry11,
        "north_and_balcan_country12": northAndBalcanCountry12,
        "north_and_balcan_country13": northAndBalcanCountry13,
        "name2": name2,
        "chygush_europe_title1": chygushEuropeTitle1,
        "chygush_europe_title2": chygushEuropeTitle2,
        "east_country1": eastCountry1,
        "east_country2": eastCountry2,
        "east_country3": eastCountry3,
        "east_country4": eastCountry4,
        "east_country5": eastCountry5,
        "east_country6": eastCountry6,
        "east_country7": eastCountry7,
        "east_country8": eastCountry8,
        "east_country9": eastCountry9,
        "east_country10": eastCountry10,
        "east_country11": eastCountry11,
        "east_country12": eastCountry12,
        "east_country13": eastCountry13,
        "east_country14": eastCountry14,
        "east_country15": eastCountry15,
        "east_country16": eastCountry16,
        "east_country17": eastCountry17,
        "east_country18": eastCountry18,
        "east_country19": eastCountry19,
        "east_country20": eastCountry20,
        "east_country21": eastCountry21,
        "east_country22": eastCountry22,
        "east_country23": eastCountry23,
        "east_country24": eastCountry24,
        "east_country25": eastCountry25,
        "east_country26": eastCountry26,
        "east_country27": eastCountry27,
        "east_country28": eastCountry28,
        "east_country29": eastCountry29,
        "east_country30": eastCountry30,
        "east_country31": eastCountry31,
        "east_country32": eastCountry32,
        "east_country33": eastCountry33,
        "east_country34": eastCountry34,
        "suroolor": suroolor,
        "suroo1": suroo1,
        "joop1": joop1,
        "suroo2": suroo2,
        "joop2": joop2,
        "suroo3": suroo3,
        "joop3": joop3,
        "suroo4": suroo4,
        "joop4": joop4,
        "suroo5": suroo5,
        "joop5": joop5,
        "usa":
            usa == null ? [] : List<dynamic>.from(usa!.map((x) => x.toJson())),
        "asia": asia == null
            ? []
            : List<dynamic>.from(asia!.map((x) => x.toJson())),
      };
}

class Asia {
  String title;
  String tema;
  String? image;

  Asia({
    required this.title,
    required this.tema,
    this.image,
  });

  factory Asia.fromJson(Map<String, dynamic> json) => Asia(
        title: json["title"],
        tema: json["tema"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "tema": tema,
        "image": image,
      };
}

class Usa {
  String? title;
  String tema;
  String? image;
  List<UsaState>? usaStates;
  String? text;

  Usa({
    this.title,
    required this.tema,
    this.image,
    this.usaStates,
    this.text,
  });

  factory Usa.fromJson(Map<String, dynamic> json) => Usa(
        title: json["title"],
        tema: json["tema"],
        image: json["image"],
        usaStates: json["usa_states"] == null
            ? []
            : List<UsaState>.from(
                json["usa_states"]!.map((x) => UsaState.fromJson(x))),
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "tema": tema,
        "image": image,
        "usa_states": usaStates == null
            ? []
            : List<dynamic>.from(usaStates!.map((x) => x.toJson())),
        "text": text,
      };
}

class UsaState {
  String state;
  String population;
  String adminCountry;

  UsaState({
    required this.state,
    required this.population,
    required this.adminCountry,
  });

  factory UsaState.fromJson(Map<String, dynamic> json) => UsaState(
        state: json["state"],
        population: json["population"],
        adminCountry: json["admin_country"],
      );

  Map<String, dynamic> toJson() => {
        "state": state,
        "population": population,
        "admin_country": adminCountry,
      };
}

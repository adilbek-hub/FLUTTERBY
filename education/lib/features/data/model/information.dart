import 'dart:convert';

class Information {
  Information({
    this.image,
  });
  final List<String>? image;

  Map<String, dynamic> toMap() {
    return {
      'image': image,
    };
  }

  factory Information.fromMap(Map<String, dynamic> map) {
    return Information(
      image: List<String>.from(map['image']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Information.fromJson(String source) =>
      Information.fromMap(json.decode(source));
}

class ComputerParts {
  ComputerParts({
    required this.tema,
    required this.name,
    required this.image,
    required this.text,
  });
  final String tema;
  final String name;
  final String image;
  final String text;

  factory ComputerParts.fromJson(Map<String, dynamic> json) {
    return ComputerParts(
      tema: json['tema'],
      name: json['name'],
      image: json['image'],
      text: json['text'],
    );
  }
}

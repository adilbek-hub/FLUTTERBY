class Main {
  Main({
    required this.temp,
    required this.feelsLike,
    required this.tempMin,
    required this.tempMax,
  });
  final num temp;
  final num feelsLike;
  final num tempMin;
  final num tempMax;

  factory Main.fromJson(Map<String, dynamic> json) {
    return Main(
      temp: json['temp'] ?? 0,
      feelsLike: json['feelsLike'] ?? 0,
      tempMin: json['tempMin'] ?? 0,
      tempMax: json['tempMax'] ?? 0,
    );
  }
}

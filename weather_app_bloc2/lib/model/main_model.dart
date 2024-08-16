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

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      temp: map['temp'] ?? 0,
      feelsLike: map['feels_like'] ?? 0,
      tempMin: map['temp_min'] ?? 0,
      tempMax: map['temp_max'] ?? 0,
    );
  }
}

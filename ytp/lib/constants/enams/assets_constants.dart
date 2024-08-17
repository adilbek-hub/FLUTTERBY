enum AssetConstants {
  basket,
  chart,
  luch,
  setting,
  ytp,
  loading,
  bgi,
  women,
}

extension AssetsExtension on AssetConstants {
  String get svg => 'assets/svg/$name.svg';
  String get png => 'assets/png/$name.png';
  String get jpg => 'assets/jpg/$name.jpg';
  String get gif => 'assets/gif/$name.gif';
}

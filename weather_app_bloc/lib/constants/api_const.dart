class ApiConst {
  static String weatherByCityName(String cityName) =>
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName,&appid=41aa18abb8974c0ea27098038f6feb1b';
}

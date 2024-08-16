class ApiConst {
  static const String apiKey = '2d01e9e3d28d4189b48461be856e9655';
  // apiKey ге барабарланган ключту топнюска барабарлангага берип койобуз. Бул ключту коштум дегени
  // String кайтара турган бир функция болду.
  //Ичине нулелбл болгон домеин болсун нул болуп калса 'us' колдон.
  static String countryNews(String countryCode) =>
      'https://newsapi.org/v2/top-headlines?country=$countryCode&apiKey=$apiKey';

  static const String sourchNews =
      'https://newsapi.org/v2/everything?q=%D0%9A%D0%B8%D1%82%D0%B0%D0%B9&apiKey=$apiKey';
}

// class News {
//   static const String newsImage =
//       'https://pbs.twimg.com/media/FVZC15bXoAE4jpl.jpg:large';
// }
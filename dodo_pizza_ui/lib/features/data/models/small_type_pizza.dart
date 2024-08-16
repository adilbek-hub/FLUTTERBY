import 'package:dodo_pizza_ui/features/data/models/suplement.dart';

class SmallPizza {
  final String image;
  final String name;
  final String sizePizza;
  final String description;
  final Supplements suplements;
  const SmallPizza(
      {required this.image,
      required this.name,
      required this.sizePizza,
      required this.description,
      required this.suplements});
}

SmallPizza smallPizza = SmallPizza(
  image: 'assets/маленькая_пепперони.png',
  name: 'Пепперони',
  sizePizza: 'Маленькая 25 см, традиционное тесто, 436 г',
  description:
      'Пеппрони из цыпленка, увеличенная порция моцареллы, томатный соус',
  suplements: Supplements(
    image: [
      'assets/сырный_бортик.png',
      'assets/сыр_блюз_чиз.png',
      'assets/шампиньоны.png',
      'assets/острый_халапеньо.png'
    ],
    name: [
      'Сырный борик',
      'Сыр Блю чиз',
      'Шампиньоны',
      'Острый халапеньо',
    ],
    price: [
      140,
      49,
      19,
      19,
    ],
  ),
);

import 'package:dodo_pizza_ui/features/data/models/small_type_pizza.dart';
import 'package:dodo_pizza_ui/features/data/models/suplement.dart';

class TypeOfPizza {
  final String image;
  final String title;
  final String sizeTitle;
  final String description;
  final String ingreTitle;
  final int price;
  final SmallPizza smallPizza;

  TypeOfPizza(
    this.smallPizza, {
    required this.image,
    required this.title,
    required this.sizeTitle,
    required this.description,
    required this.ingreTitle,
    required this.price,
  });
}

//1
TypeOfPizza peperroni = TypeOfPizza(
  image: 'assets/пепперони.png',
  title: 'Пепперони',
  sizeTitle: 'Средняя 30 см, традиционное тесто, 585 г',
  description:
      'Пепперони из цыпленка, увеличенная порция моцареллы, томатный соус',
  price: 445,
  ingreTitle: 'Убрать ингредиенты',
  SmallPizza(
    image: 'assets/пепперони_25.png',
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
  ),
);
//2
TypeOfPizza pizza2 = TypeOfPizza(
  image: 'assets/2_пицца.webp',
  title: '2 пицца',
  sizeTitle: 'Средняя 30 см, традиционное тесто, 585 г',
  description:
      'Пепперони из цыпленка, увеличенная порция моцареллы, томатный соус',
  price: 1095,
  ingreTitle: 'Убрать ингредиенты',
  SmallPizza(
    image: 'assets/пепперони30.png',
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
  ),
);
//3
TypeOfPizza mexican = TypeOfPizza(
  image: 'assets/мексиканская_пицца.png',
  title: 'Мексиканская',
  sizeTitle: 'Средняя 30 см, традиционное тесто, 585 г',
  description:
      'Пепперони из цыпленка, увеличенная порция моцареллы, томатный соус',
  price: 445,
  ingreTitle: 'Убрать ингредиенты',
  SmallPizza(
    image: 'assets/пепперони35.png',
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
  ),
);
//4
TypeOfPizza dodster = TypeOfPizza(
  image: 'assets/додстер.png',
  title: 'Пепперони',
  sizeTitle: 'Средняя 30 см, традиционное тесто, 585 г',
  description:
      'Пепперони из цыпленка, увеличенная порция моцареллы, томатный соус',
  price: 189,
  ingreTitle: 'Убрать ингредиенты',
  SmallPizza(
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
  ),
);
//5
TypeOfPizza brusletics = TypeOfPizza(
  image: 'assets/бруслет.png',
  title: 'Бруслетики',
  sizeTitle: 'Средняя 30 см, традиционное тесто, 585 г',
  description:
      'Пепперони из цыпленка, увеличенная порция моцареллы, томатный соус',
  price: 169,
  ingreTitle: 'Убрать ингредиенты',
  SmallPizza(
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
  ),
);

List<TypeOfPizza> typeOfPizzaList = [
  peperroni,
  pizza2,
  mexican,
  dodster,
  brusletics,
];

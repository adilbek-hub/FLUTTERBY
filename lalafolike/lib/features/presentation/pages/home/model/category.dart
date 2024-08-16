import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class Children {
  const Children({
    required this.name,
    required this.price,
    this.children,
  });

  final String name;
  final double price;
  final List<Children>? children;
}

class Category {
  const Category({
    required this.image,
    required this.name,
    required this.price,
    this.children,
  });

  final String image;
  final String name;
  final double price;
  final List<Children>? children;
}

List<Category> categories = [
  Category(
    image: AssetConstants.car.png,
    name: 'Транспорт',
    price: 0.0,
    children: [
      const Children(
        name: 'Легковые автомобили',
        price: 1000.0,
        children: [
          Children(name: 'Седаны', price: 800.0, children: [
            Children(name: 'BYD', price: 200.0),
            Children(name: 'Tesla', price: 400.0),
            Children(name: 'Audi', price: 700.0),
          ]),
          Children(name: 'Хэтчбеки', price: 900.0),
        ],
      ),
      const Children(name: 'Грузовые автомобили', price: 2000.0),
    ],
  ),
  Category(
    image: AssetConstants.brush.png,
    name: 'Услуги',
    price: 0.0,
    children: [
      const Children(name: 'Ремонт', price: 500.0),
      const Children(name: 'Уборка', price: 300.0),
    ],
  ),
  Category(
    image: AssetConstants.phone.png,
    name: 'Техника и электроника',
    price: 0.0,
    children: [
      const Children(name: 'Компьютеры', price: 1200.0),
      const Children(name: 'Телефоны', price: 800.0),
    ],
  ),
  Category(
    image: AssetConstants.ball.png,
    name: 'Спорт и хобби',
    price: 0.0,
    children: [
      const Children(name: 'Фитнес', price: 100.0),
      const Children(name: 'Рыбалка', price: 200.0),
    ],
  ),
  Category(
    image: AssetConstants.vilochnyPogruzchic.png,
    name: 'Оборудования для бизнеса',
    price: 0.0,
    children: [
      const Children(name: 'Офисное оборудование', price: 1500.0),
      const Children(name: 'Производственное оборудование', price: 2500.0),
    ],
  ),
  Category(
    image: AssetConstants.picnic.png,
    name: 'Иссык-Куль 2024',
    price: 0.0,
    children: [
      const Children(name: 'Отели', price: 5000.0),
      const Children(name: 'Туры', price: 3000.0),
    ],
  ),
  Category(
    image: AssetConstants.businessCart.webp,
    name: 'Бизнесы на lalafo',
    price: 0.0,
    children: [
      const Children(name: 'Продуктовые магазины', price: 10000.0),
      const Children(name: 'Кафе', price: 8000.0),
    ],
  ),
  Category(
    image: AssetConstants.home.png,
    name: 'Недвижимость',
    price: 0.0,
    children: [
      const Children(name: 'Квартиры', price: 20000.0),
      const Children(name: 'Дома', price: 30000.0),
    ],
  ),
  Category(
    image: AssetConstants.flawerVasa.jpg,
    name: 'Дом и сад',
    price: 0.0,
    children: [
      const Children(name: 'Мебель', price: 2000.0),
      const Children(name: 'Садовая техника', price: 1500.0),
    ],
  ),
  Category(
    image: AssetConstants.portfel.png,
    name: 'Работа',
    price: 0.0,
    children: [
      const Children(name: 'Вакансии', price: 0.0),
      const Children(name: 'Резюме', price: 0.0),
    ],
  ),
  Category(
    image: AssetConstants.dress.png,
    name: 'Личные вещи',
    price: 0.0,
    children: [
      const Children(name: 'Одежда', price: 500.0),
      const Children(name: 'Аксессуары', price: 300.0),
    ],
  ),
  Category(
    image: AssetConstants.catcategory.webp,
    name: 'Животные',
    price: 0.0,
    children: [
      const Children(name: 'Собаки', price: 1000.0),
      const Children(name: 'Кошки', price: 800.0),
    ],
  ),
  Category(
    image: AssetConstants.toy.webp,
    name: 'Детский мир',
    price: 0.0,
    children: [
      const Children(name: 'Игрушки', price: 200.0),
      const Children(name: 'Одежда для детей', price: 400.0),
    ],
  ),
  Category(
    image: AssetConstants.medportfel.webp,
    name: 'Медтовары',
    price: 0.0,
    children: [
      const Children(name: 'Медикаменты', price: 50.0),
      const Children(name: 'Оборудование', price: 1000.0),
    ],
  ),
  Category(
    image: AssetConstants.podarok.png,
    name: 'Находки, отдам даром',
    price: 0.0,
    children: [
      const Children(name: 'Одежда', price: 0.0),
      const Children(name: 'Мебель', price: 0.0),
    ],
  ),
  // Пример без children
  // Category(
  //   image: AssetConstants.home.png,
  //   name: 'Без подкатегорий',
  //   price: 0.0,
  // ),
];

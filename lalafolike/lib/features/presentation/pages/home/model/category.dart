import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class Children {
  const Children({
    required this.id,
    required this.name,
    required this.price,
    this.children,
  });

  final String name;
  final double price;
  final List<Children>? children;
  final int id;
}

class Category {
  const Category({
    required this.id,
    required this.image,
    required this.name,
    required this.price,
    this.children,
  });
  final int id;
  final String image;
  final String name;
  final double price;
  final List<Children>? children;
}

List<Category> categories = [
  Category(
    id: 1,
    image: AssetConstants.car.png,
    name: 'Транспорт',
    price: 0.0,
    children: [
      const Children(
        id: 1,
        name: 'Легковые автомобили',
        price: 1000.0,
        children: [
          Children(id: 1, name: 'Седаны', price: 800.0, children: [
            Children(id: 1, name: 'BYD', price: 200.0),
            Children(id: 2, name: 'Tesla', price: 400.0),
            Children(id: 3, name: 'Audi', price: 700.0),
          ]),
          Children(id: 2, name: 'Хэтчбеки', price: 900.0),
        ],
      ),
      const Children(id: 3, name: 'Грузовые автомобили', price: 2000.0),
    ],
  ),
  Category(
    id: 2,
    image: AssetConstants.brush.png,
    name: 'Услуги',
    price: 0.0,
    children: [
      const Children(id: 2, name: 'Ремонт', price: 500.0),
      const Children(id: 3, name: 'Уборка', price: 300.0),
    ],
  ),
  Category(
    id: 3,
    image: AssetConstants.phone.png,
    name: 'Техника и электроника',
    price: 0.0,
    children: [
      const Children(id: 3, name: 'Компьютеры', price: 1200.0),
      const Children(id: 4, name: 'Телефоны', price: 800.0),
    ],
  ),
  Category(
    id: 4,
    image: AssetConstants.ball.png,
    name: 'Спорт и хобби',
    price: 0.0,
    children: [
      const Children(id: 4, name: 'Фитнес', price: 100.0),
      const Children(id: 5, name: 'Рыбалка', price: 200.0),
    ],
  ),
  Category(
    id: 5,
    image: AssetConstants.vilochnyPogruzchic.png,
    name: 'Оборудования для бизнеса',
    price: 0.0,
    children: [
      const Children(id: 5, name: 'Офисное оборудование', price: 1500.0),
      const Children(
          id: 6, name: 'Производственное оборудование', price: 2500.0),
    ],
  ),
  Category(
    id: 6,
    image: AssetConstants.picnic.png,
    name: 'Иссык-Куль 2024',
    price: 0.0,
    children: [
      const Children(id: 7, name: 'Отели', price: 5000.0),
      const Children(id: 8, name: 'Туры', price: 3000.0),
    ],
  ),
  Category(
    id: 7,
    image: AssetConstants.businessCart.webp,
    name: 'Бизнесы на lalafo',
    price: 0.0,
    children: [
      const Children(id: 9, name: 'Продуктовые магазины', price: 10000.0),
      const Children(id: 10, name: 'Кафе', price: 8000.0),
    ],
  ),
  Category(
    id: 8,
    image: AssetConstants.home.png,
    name: 'Недвижимость',
    price: 0.0,
    children: [
      const Children(id: 11, name: 'Квартиры', price: 20000.0),
      const Children(id: 12, name: 'Дома', price: 30000.0),
    ],
  ),
  Category(
    id: 9,
    image: AssetConstants.flawerVasa.jpg,
    name: 'Дом и сад',
    price: 0.0,
    children: [
      const Children(id: 13, name: 'Мебель', price: 2000.0),
      const Children(id: 14, name: 'Садовая техника', price: 1500.0),
    ],
  ),
  Category(
    id: 10,
    image: AssetConstants.portfel.png,
    name: 'Работа',
    price: 0.0,
    children: [
      const Children(id: 15, name: 'Вакансии', price: 0.0),
      const Children(id: 16, name: 'Резюме', price: 0.0),
    ],
  ),
  Category(
    id: 11,
    image: AssetConstants.dress.png,
    name: 'Личные вещи',
    price: 0.0,
    children: [
      const Children(id: 17, name: 'Одежда', price: 500.0),
      const Children(id: 18, name: 'Аксессуары', price: 300.0),
    ],
  ),
  Category(
    id: 12,
    image: AssetConstants.catcategory.webp,
    name: 'Животные',
    price: 0.0,
    children: [
      const Children(id: 19, name: 'Собаки', price: 1000.0),
      const Children(id: 20, name: 'Кошки', price: 800.0),
    ],
  ),
  Category(
    id: 13,
    image: AssetConstants.toy.webp,
    name: 'Детский мир',
    price: 0.0,
    children: [
      const Children(id: 21, name: 'Игрушки', price: 200.0),
      const Children(id: 22, name: 'Одежда для детей', price: 400.0),
    ],
  ),
  Category(
    id: 14,
    image: AssetConstants.medportfel.webp,
    name: 'Медтовары',
    price: 0.0,
    children: [
      const Children(id: 23, name: 'Медикаменты', price: 50.0),
      const Children(id: 24, name: 'Оборудование', price: 1000.0),
    ],
  ),
  Category(
    id: 15,
    image: AssetConstants.podarok.png,
    name: 'Находки, отдам даром',
    price: 0.0,
    children: [
      const Children(id: 25, name: 'Одежда', price: 0.0),
      const Children(id: 26, name: 'Мебель', price: 0.0),
    ],
  ),
];

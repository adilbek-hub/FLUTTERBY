class CategoryAnnounsement {
  const CategoryAnnounsement({required this.name, this.children});

  final String name;
  final List<ChildrenAnnounsement>? children;
}

class ChildrenAnnounsement {
  const ChildrenAnnounsement({
    required this.name,
    this.children,
  });
  final String name;
  final List<ChildrenAnnounsement>? children;
}

CategoryAnnounsement transport = const CategoryAnnounsement(
  name: 'Транспорт',
  children: [
    ChildrenAnnounsement(
      name: 'Продажа авто',
      children: [
        ChildrenAnnounsement(name: 'Toyota'),
        ChildrenAnnounsement(name: 'Nissan'),
        ChildrenAnnounsement(name: 'BMW'),
        ChildrenAnnounsement(name: 'Lada'),
        ChildrenAnnounsement(name: 'Audi'),
        ChildrenAnnounsement(name: 'Mazda'),
        ChildrenAnnounsement(name: 'Hyundai'),
        ChildrenAnnounsement(name: 'KIA'),
        ChildrenAnnounsement(name: 'Mercedes-Benz'),
        ChildrenAnnounsement(name: 'Volkswagen'),
        ChildrenAnnounsement(name: 'Ford'),
        ChildrenAnnounsement(name: 'Mitsubishi'),
        ChildrenAnnounsement(name: 'Chevrolet'),
        ChildrenAnnounsement(name: 'Skoda'),
        ChildrenAnnounsement(name: 'Lexus'),
        ChildrenAnnounsement(name: 'Honda'),
        ChildrenAnnounsement(name: 'Infiniti'),
        ChildrenAnnounsement(name: 'Jaguar'),
        ChildrenAnnounsement(name: 'KIA'),
        ChildrenAnnounsement(name: 'Mazda'),
        ChildrenAnnounsement(name: 'Nissan'),
      ],
    ),
    ChildrenAnnounsement(name: 'Авто запчасти', children: [
      ChildrenAnnounsement(name: 'Кузовные детали', children: [
        ChildrenAnnounsement(name: 'Бамперы'),
        ChildrenAnnounsement(name: 'Стекла'),
        ChildrenAnnounsement(name: 'Двери'),
        ChildrenAnnounsement(name: 'Капоты'),
        ChildrenAnnounsement(name: 'Крылья'),
        ChildrenAnnounsement(name: 'Решетки, облицовки'),
        ChildrenAnnounsement(name: 'Зеркала'),
        ChildrenAnnounsement(name: 'Крышки багажника'),
        ChildrenAnnounsement(name: 'Спойлеры'),
        ChildrenAnnounsement(name: 'Подкрылки'),
        ChildrenAnnounsement(name: 'Дверные ручки'),
        ChildrenAnnounsement(name: 'Другие детали кузова'),
      ]),
      ChildrenAnnounsement(name: 'Ходовая часть'),
      ChildrenAnnounsement(name: 'Коробка передач'),
      ChildrenAnnounsement(name: 'Тормозная система'),
      ChildrenAnnounsement(name: 'Салон'),
      ChildrenAnnounsement(name: 'Электрооборудование'),
      ChildrenAnnounsement(name: 'Амортизаторы'),
      ChildrenAnnounsement(name: 'Рулевое управление'),
      ChildrenAnnounsement(name: 'Аккумуляторы'),
      ChildrenAnnounsement(name: 'Коробка'),
      ChildrenAnnounsement(name: 'Кузов'),
      ChildrenAnnounsement(name: 'Двигатель'),
      ChildrenAnnounsement(name: 'Мотор'),
      ChildrenAnnounsement(name: 'Кпп'),
      ChildrenAnnounsement(name: 'Оборудование'),
    ]),
    ChildrenAnnounsement(name: 'Аксессуары и тюнинг', children: [
      ChildrenAnnounsement(name: 'Аксессуары для салона'),
      ChildrenAnnounsement(name: 'Автоэлектроника'),
      ChildrenAnnounsement(name: 'Тюнинг'),
      ChildrenAnnounsement(name: 'Инструменты для авто'),
      ChildrenAnnounsement(name: 'Скупка катализаторов'),
      ChildrenAnnounsement(name: 'Багажники на крышу и фаркопы'),
      ChildrenAnnounsement(name: 'Авто косметика'),
      ChildrenAnnounsement(name: 'ГБО'),
      ChildrenAnnounsement(name: 'Автохимия'),
      ChildrenAnnounsement(name: 'Аккумуляторы'),
      ChildrenAnnounsement(name: 'Нештатное освещение'),
      ChildrenAnnounsement(name: 'Внешний декор'),
      ChildrenAnnounsement(name: 'Дополнительное оборудование'),
      ChildrenAnnounsement(name: 'Уход за авто'),
      ChildrenAnnounsement(name: 'Материалы'),
      ChildrenAnnounsement(name: 'Другие аксессуары'),
    ]),
    ChildrenAnnounsement(name: 'Шины и диски', children: [
      ChildrenAnnounsement(name: 'Шины'),
      ChildrenAnnounsement(name: 'Диски'),
      ChildrenAnnounsement(name: 'Колеса в сборе'),
      ChildrenAnnounsement(name: 'Шиномонтаж'),
      ChildrenAnnounsement(name: 'Колпаки'),
      ChildrenAnnounsement(name: 'Другие аксессуары для шин, дисков и колес'),
    ]),
    ChildrenAnnounsement(name: 'Коммерческий транспорт', children: [
      ChildrenAnnounsement(name: 'Грузовой транспорт', children: [
        ChildrenAnnounsement(name: 'Грузовики'),
        ChildrenAnnounsement(name: 'Легкий грузовой транспорт'),
        ChildrenAnnounsement(name: 'Тягачи'),
        ChildrenAnnounsement(name: 'Прицепы и полуприцепы'),
      ]),
      ChildrenAnnounsement(name: 'Сельхозтехника', children: [
        ChildrenAnnounsement(name: 'Тракторы'),
        ChildrenAnnounsement(name: 'Комбайны'),
        ChildrenAnnounsement(name: 'Подборщики'),
        ChildrenAnnounsement(name: 'Косилки'),
        ChildrenAnnounsement(name: 'Мотоблоки'),
        ChildrenAnnounsement(name: 'Бороны'),
        ChildrenAnnounsement(name: 'Грабли'),
        ChildrenAnnounsement(name: 'Дробилки'),
        ChildrenAnnounsement(name: 'Жатки'),
        ChildrenAnnounsement(name: 'Копалки'),
        ChildrenAnnounsement(name: 'Култиваторы'),
        ChildrenAnnounsement(name: 'Минитракторы'),
        ChildrenAnnounsement(name: 'Опрыскиватели'),
        ChildrenAnnounsement(name: 'Плуги'),
        ChildrenAnnounsement(name: 'Сялки'),
      ]),
      ChildrenAnnounsement(
        name: 'Спецтехника',
        children: [
          ChildrenAnnounsement(name: 'Автокраны'),
          ChildrenAnnounsement(name: 'Автосамосвалы'),
          ChildrenAnnounsement(name: 'Автобульеты'),
          ChildrenAnnounsement(name: 'Автотракторы'),
          ChildrenAnnounsement(name: 'Автопогрузчики'),
          ChildrenAnnounsement(name: 'Эвакуаторы'),
          ChildrenAnnounsement(name: 'Бетономешалки'),
          ChildrenAnnounsement(name: 'Ассенизаторы'),
        ],
      ),
      ChildrenAnnounsement(name: 'Автобусы и маршрутки'),
    ]),
    ChildrenAnnounsement(name: 'Монотехника', children: [
      ChildrenAnnounsement(name: 'Скутеры'),
      ChildrenAnnounsement(name: 'Мотоциклы'),
      ChildrenAnnounsement(name: 'Мотороллеры муравей'),
      ChildrenAnnounsement(name: 'Квадроциклы'),
      ChildrenAnnounsement(name: 'Мотозапчасти'),
      ChildrenAnnounsement(name: 'Мотоэкипировка'),
      ChildrenAnnounsement(name: 'Скупка мототехники'),
      ChildrenAnnounsement(name: 'Другая мототехника'),
    ]),
    ChildrenAnnounsement(name: 'Скупка авто', children: [
      ChildrenAnnounsement(name: 'Mersedes-Benz'),
      ChildrenAnnounsement(name: 'BMW'),
      ChildrenAnnounsement(name: 'Toyota'),
      ChildrenAnnounsement(name: 'Lada'),
      ChildrenAnnounsement(name: 'Hyundai'),
      ChildrenAnnounsement(name: 'KIA'),
      ChildrenAnnounsement(name: 'Renault'),
      ChildrenAnnounsement(name: 'Skoda'),
      ChildrenAnnounsement(name: 'Hundai'),
      ChildrenAnnounsement(name: 'Nissan'),
      ChildrenAnnounsement(name: 'Fiat'),
      ChildrenAnnounsement(name: 'Mitsubishi'),
      ChildrenAnnounsement(name: 'Hyundai'),
      ChildrenAnnounsement(name: 'Volkswagen'),
      ChildrenAnnounsement(name: 'Skoda'),
      ChildrenAnnounsement(name: 'Audi'),
      ChildrenAnnounsement(name: 'Lexus'),
      ChildrenAnnounsement(name: 'Mazda'),
      ChildrenAnnounsement(name: 'Mercedes-Benz'),
      ChildrenAnnounsement(name: 'Infiniti'),
      ChildrenAnnounsement(name: 'Ford'),
      ChildrenAnnounsement(name: 'Chevrolet'),
      ChildrenAnnounsement(name: 'Volkswagen'),
      ChildrenAnnounsement(name: 'Opel'),
      ChildrenAnnounsement(name: 'Citroen'),
      ChildrenAnnounsement(name: 'Peugeot'),
      ChildrenAnnounsement(name: 'Volvo'),
      ChildrenAnnounsement(name: 'Suzuki'),
      ChildrenAnnounsement(name: 'Dodge'),
      ChildrenAnnounsement(name: 'Jaguar'),
      ChildrenAnnounsement(name: 'Subaru'),
      ChildrenAnnounsement(name: 'Daihatsu'),
      ChildrenAnnounsement(name: 'SsangYong'),
      ChildrenAnnounsement(name: 'Mitsubishi'),
      ChildrenAnnounsement(name: 'Mazda'),
      ChildrenAnnounsement(name: 'Hyundai'),
    ]),
    ChildrenAnnounsement(name: 'Водный транспорт'),
    ChildrenAnnounsement(name: 'Другой транспорт'),
  ],
);

const CategoryAnnounsement nedvijimost =
    CategoryAnnounsement(name: 'Недвижимость');
const CategoryAnnounsement uslugi = CategoryAnnounsement(name: 'Услуги');
const CategoryAnnounsement domISad = CategoryAnnounsement(name: 'Дом и сад');
const CategoryAnnounsement texnika =
    CategoryAnnounsement(name: 'Техника и электроника');
const CategoryAnnounsement lichnieVeshi =
    CategoryAnnounsement(name: 'Личные вещи');
const CategoryAnnounsement sportIHobbi =
    CategoryAnnounsement(name: 'Спорт и хобби');
const CategoryAnnounsement oborudovanie =
    CategoryAnnounsement(name: 'Оборудование для бизнеса');
const CategoryAnnounsement kindToys = CategoryAnnounsement(name: 'Детский мир');
const CategoryAnnounsement medTovary = CategoryAnnounsement(name: 'Медтовары');
const CategoryAnnounsement issykkul =
    CategoryAnnounsement(name: 'Иссык-Куль 2024');
const CategoryAnnounsement nahodki =
    CategoryAnnounsement(name: 'Находки отдам даром');

List<CategoryAnnounsement> categoriesannounsement = [
  transport,
  nedvijimost,
  uslugi,
  domISad,
  texnika,
  lichnieVeshi,
  sportIHobbi,
  oborudovanie,
  kindToys,
  medTovary,
  issykkul,
  nahodki,
];

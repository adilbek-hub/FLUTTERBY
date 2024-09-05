import 'package:lalafolike/features/presentation/enams/assets_constants.dart';

class ProductsFromFirbase {
  final int? id;
  final int? categoryId;
  final double? price;
  final double? discountPrice;
  final String? vacation;
  final String? description;
  final String? imageUrl;
  final String? name;
  final String? state;
  final String? model;
  final String? mileagekm;
  final String? year;
  final String? body;
  final String? transmission;
  final String? fuel;
  final String? engineVolume;
  final String? color;
  final String? steeringWheel;
  final String? inStock;
  final String? drive;
  final String? calculation;
  final String? technicalStates;
  final String? vinCode;
  final String? warranty;
  final String? bodyType;

  ProductsFromFirbase({
    this.transmission,
    this.fuel,
    this.engineVolume,
    this.color,
    this.steeringWheel,
    this.inStock,
    this.drive,
    this.calculation,
    this.technicalStates,
    this.vinCode,
    this.warranty,
    this.bodyType,
    this.id,
    this.categoryId,
    this.price,
    this.discountPrice,
    this.vacation,
    this.description,
    this.imageUrl,
    this.name,
    this.state,
    this.model,
    this.mileagekm,
    this.year,
    this.body,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'categoryId': categoryId,
      'price': price,
      'discountPrice': discountPrice,
      'vacation': vacation,
      'description': description,
      'imageUrl': imageUrl,
      'name': name,
      'state': state,
      'model': model,
      'mileagekm': mileagekm,
      'year': year,
      'body': body,
      'transmission': transmission,
      'fuel': fuel,
      'engineVolume': engineVolume,
      'color': color,
      'steeringWheel': steeringWheel,
      'inStock': inStock,
      'drive': drive,
      'calculation': calculation,
      'technicalStates': technicalStates,
      'vinCode': vinCode,
      'warranty': warranty,
      'bodyType': bodyType,
    };
  }

  factory ProductsFromFirbase.fromMap(Map<String, dynamic> map) {
    return ProductsFromFirbase(
      id: map['id'],
      categoryId: map['categoryId'],
      price: map['price'],
      discountPrice: map['discountPrice'],
      vacation: map['vacation'],
      description: map['description'],
      imageUrl: map['imageUrl'],
      name: map['name'],
      state: map['state'],
      model: map['model'],
      mileagekm: map['mileagekm'],
      year: map['year'],
      body: map['body'],
      transmission: map['transmission'],
      fuel: map['fuel'],
      engineVolume: map['engineVolume'],
      color: map['color'],
      steeringWheel: map['steeringWheel'],
      inStock: map['inStock'],
      drive: map['drive'],
      calculation: map['calculation'],
      technicalStates: map['technicalStates'],
      vinCode: map['vinCode'],
      warranty: map['warranty'],
      bodyType: map['bodyType'],
    );
  }
}

class ProductModel {
  final int? id;
  final int? categoryId;
  final double? price;
  final double? discountPrice;
  final String? vacation;
  final String? description;
  final String? imageUrl;
  final String? name;
  // состояние
  final String? state;
  final String? model;
  final String? mileagekm;
  final String? year;
  // кузов
  final String? body;
  //коропка передач
  final String? transmission;
  //Топливо
  final String? fuel;
  // Объем двигателя
  final String? engineVolume;
  // Цвет
  final String? color;
// Руль
  final String? steeringWheel;
  // В наличии
  final String? inStock;
  //Привод
  final String? drive;
  // Расчет
  final String? calculation;
  //Технические состояния
  final String? technicalStates;
// VIN code
  final String? vinCode;
  //Расстаможка
  final String? warranty;
  //Тип кузова
  final String? bodyType;

  ProductModel({
    this.transmission,
    this.fuel,
    this.engineVolume,
    this.color,
    this.steeringWheel,
    this.inStock,
    this.drive,
    this.calculation,
    this.technicalStates,
    this.vinCode,
    this.warranty,
    this.bodyType,
    this.id,
    this.categoryId,
    this.price,
    this.discountPrice,
    this.vacation,
    this.description,
    this.imageUrl,
    this.name,
    this.state,
    this.model,
    this.mileagekm,
    this.year,
    this.body,
  });
}

final ProductsFromFirbase mersedes = ProductsFromFirbase(
  id: 1,
  categoryId: 1,
  price: 300400,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz E-55: 2000 г.5.5л,Автомат,Бензин',
  imageUrl: AssetConstants.mersE55.jpg,
);
final ProductsFromFirbase mersedesE55 = ProductsFromFirbase(
  id: 2,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 50000000,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase mersedesSClass = ProductsFromFirbase(
  id: 3,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase wwpassat = ProductsFromFirbase(
  id: 4,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase kiak5 = ProductsFromFirbase(
  id: 19,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase changanBi = ProductsFromFirbase(
  id: 5,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase sprinter22SDI = ProductsFromFirbase(
  id: 20,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase mersedesS350 = ProductsFromFirbase(
  id: 6,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase toyotaHilux = ProductsFromFirbase(
  id: 7,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase wwGolf = ProductsFromFirbase(
  id: 8,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase hindaySonata = ProductsFromFirbase(
  id: 9,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase porter = ProductsFromFirbase(
  id: 10,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase toyotaLandCruiser = ProductsFromFirbase(
  id: 11,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase maped = ProductsFromFirbase(
  id: 12,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase skuterTank = ProductsFromFirbase(
  id: 13,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase wwPassat2001 = ProductsFromFirbase(
  id: 14,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase hondaFit = ProductsFromFirbase(
  id: 15,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase bmwX2 = ProductsFromFirbase(
  id: 16,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase hundayGranduer = ProductsFromFirbase(
  id: 17,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);
final ProductsFromFirbase bmwX5M = ProductsFromFirbase(
  id: 18,
  categoryId: 1,
  imageUrl: AssetConstants.mersE55.jpg,
  price: 1611160,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz',
  model: 'E-55',
  year: '2000 г',
  engineVolume: '5.5л',
  fuel: 'Бензин',
  transmission: 'Автомат',
);

List<ProductsFromFirbase> products = [
  mersedes,
  mersedesSClass,
  wwpassat,
  kiak5,
  changanBi,
  sprinter22SDI,
  mersedesS350,
  toyotaHilux,
  wwGolf,
  hindaySonata,
  porter,
  toyotaLandCruiser,
  maped,
  skuterTank,
  wwPassat2001,
  hondaFit,
  bmwX2,
  hundayGranduer,
  bmwX5M,
  ProductsFromFirbase(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: 'Описание',
      imageUrl: AssetConstants.leonardo.jpg),
  ProductsFromFirbase(
      price: 50000,
      vacation: '6 дней',
      description: '1 комната, Собственник',
      imageUrl: AssetConstants.car.png),
  ProductsFromFirbase(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: '1 комната, Собственник',
      imageUrl: AssetConstants.car1.png),
  ProductsFromFirbase(
    price: 50000,
    discountPrice: 5000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.car2.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car3.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car4.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat1.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat2.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp1.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp2.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp3.png,
  ),
];

List<ProductsFromFirbase> recomendedProducts = [
  ProductsFromFirbase(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: 'Поставим кондер дешево',
    imageUrl: AssetConstants.konder.webp,
  ),
  ProductsFromFirbase(
    price: 10000,
    vacation: '7 дней',
    description: 'Поставим кондер хорошо',
    imageUrl: AssetConstants.konder2.jpg,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl: AssetConstants.flat.png,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.laptopInRoom.jpg,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.tables.jpg,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.carr.webp,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.dressInRoom.jpg,
  ),
  ProductsFromFirbase(
      price: 10000,
      discountPrice: 8000,
      vacation: '7 дней',
      description: 'Описание',
      imageUrl: AssetConstants.whiteHome.jpg),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat.jpg,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.camera.jpg,
  ),
  ProductsFromFirbase(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.iphonee.webp,
  ),
];

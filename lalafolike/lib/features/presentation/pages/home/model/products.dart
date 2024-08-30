import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// class ProductModel {
//   final int? id;
//   final int? categoryId;
//   final double? price;
//   final double? discountPrice;
//   final String? vacation;
//   final String? description;
//   final String? imageUrl;
//   final String? name;
//   final String? state;
//   final String? model;
//   final String? mileagekm;
//   final String? year;
//   final String? body;
//   final String? transmission;
//   final String? fuel;
//   final String? engineVolume;
//   final String? color;
//   final String? steeringWheel;
//   final String? inStock;
//   final String? drive;
//   final String? calculation;
//   final String? technicalStates;
//   final String? vinCode;
//   final String? warranty;
//   final String? bodyType;

//   ProductModel({
//     this.transmission,
//     this.fuel,
//     this.engineVolume,
//     this.color,
//     this.steeringWheel,
//     this.inStock,
//     this.drive,
//     this.calculation,
//     this.technicalStates,
//     this.vinCode,
//     this.warranty,
//     this.bodyType,
//     this.id,
//     this.categoryId,
//     this.price,
//     this.discountPrice,
//     this.vacation,
//     this.description,
//     this.imageUrl,
//     this.name,
//     this.state,
//     this.model,
//     this.mileagekm,
//     this.year,
//     this.body,
//   });

//   factory ProductModel.fromFirestore(DocumentSnapshot doc) {
//     return ProductModel(
//       id: doc['id'] as int?,
//       categoryId: doc['categoryId'] as int?,
//       price: doc['price'] as double?,
//       discountPrice: doc['discountPrice'] as double?,
//       vacation: doc['vacation'] as String?,
//       description: doc['description'] as String?,
//       imageUrl: doc['imageUrl'] as String?,
//       name: doc['name'] as String?,
//       state: doc['state'] as String?,
//       model: doc['model'] as String?,
//       mileagekm: doc['mileagekm'] as String?,
//       year: doc['year'] as String?,
//       body: doc['body'] as String?,
//       transmission: doc['transmission'] as String?,
//       fuel: doc['fuel'] as String?,
//       engineVolume: doc['engineVolume'] as String?,
//       color: doc['color'] as String?,
//       steeringWheel: doc['steeringWheel'] as String?,
//       inStock: doc['inStock'] as String?,
//       drive: doc['drive'] as String?,
//       calculation: doc['calculation'] as String?,
//       technicalStates: doc['technicalStates'] as String?,
//       vinCode: doc['vinCode'] as String?,
//       warranty: doc['warranty'] as String?,
//       bodyType: doc['bodyType'] as String?,
//     );
//   }
// }


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

final ProductModel mersedes = ProductModel(
  id: 1,
  categoryId: 1,
  price: 300400,
  description: 'Продаю автомобиль',
  name: 'Mercedes-Benz E-55: 2000 г.5.5л,Автомат,Бензин',
  imageUrl: AssetConstants.mersE55.jpg,
);
final ProductModel mersedesE55 = ProductModel(
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
final ProductModel mersedesSClass = ProductModel(
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
final ProductModel wwpassat = ProductModel(
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
final ProductModel kiak5 = ProductModel(
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
final ProductModel changanBi = ProductModel(
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
final ProductModel sprinter22SDI = ProductModel(
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
final ProductModel mersedesS350 = ProductModel(
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
final ProductModel toyotaHilux = ProductModel(
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
final ProductModel wwGolf = ProductModel(
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
final ProductModel hindaySonata = ProductModel(
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
final ProductModel porter = ProductModel(
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
final ProductModel toyotaLandCruiser = ProductModel(
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
final ProductModel maped = ProductModel(
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
final ProductModel skuterTank = ProductModel(
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
final ProductModel wwPassat2001 = ProductModel(
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
final ProductModel hondaFit = ProductModel(
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
final ProductModel bmwX2 = ProductModel(
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
final ProductModel hundayGranduer = ProductModel(
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
final ProductModel bmwX5M = ProductModel(
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

List<ProductModel> products = [
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
  ProductModel(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: 'Описание',
      imageUrl: AssetConstants.leonardo.jpg),
  ProductModel(
      price: 50000,
      vacation: '6 дней',
      description: '1 комната, Собственник',
      imageUrl: AssetConstants.car.png),
  ProductModel(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: '1 комната, Собственник',
      imageUrl: AssetConstants.car1.png),
  ProductModel(
    price: 50000,
    discountPrice: 5000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.car2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car3.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.car4.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat1.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp1.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp2.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.comp3.png,
  ),
];

List<ProductModel> recomendedProducts = [
  ProductModel(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: 'Поставим кондер дешево но безполезно',
    imageUrl: AssetConstants.konder.webp,
  ),
  ProductModel(
    price: 10000,
    vacation: '7 дней',
    description: 'Поставим кондер хорошо',
    imageUrl: AssetConstants.konder2.jpg,
  ),
  ProductModel(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl: AssetConstants.flat.png,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl: AssetConstants.laptopInRoom.jpg,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.tables.jpg,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.carr.webp,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.dressInRoom.jpg,
  ),
  ProductModel(
      price: 10000,
      discountPrice: 8000,
      vacation: '7 дней',
      description: 'Описание',
      imageUrl: AssetConstants.whiteHome.jpg),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.cat.jpg,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.camera.jpg,
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: AssetConstants.iphonee.webp,
  ),
];

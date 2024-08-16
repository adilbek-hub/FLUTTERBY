import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';

class ProductModel {
  final double? price;
  final double? discountPrice;
  final String? vacation;
  final String? description;
  final String? imageUrl;

  ProductModel(
      {this.price,
      this.discountPrice,
      this.vacation,
      this.description,
      this.imageUrl});
}

List<ProductModel> products = [
  ProductModel(
      price: 50000,
      discountPrice: null,
      vacation: '6 дней',
      description: 'Описание',
      imageUrl: AssetConstants.camera1.png),
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

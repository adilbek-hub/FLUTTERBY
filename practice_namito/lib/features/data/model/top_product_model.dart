import 'dart:convert';

import 'package:practice_namito/features/data/model/products.dart';

List<TopProduct> topProductFromJson(String str) {
  try {
    final decoded = json.decode(utf8.decode(str.codeUnits));
    if (decoded == null || !decoded.isNotEmpty) {
      return []; // Return empty list if data is null or empty
    }

    return List<TopProduct>.from(decoded.map((x) => TopProduct.fromJson(x)));
  } catch (e) {
    print('Error parsing top products: $e'); // Log the error for debugging
    return []; // Return empty list on parsing errors
  }
}

class TopProduct {
  final int? id;
  final String? name;
  final String? description;
  final String? category;
  final ProductPrice? price;
  final double? averageRating;
  final List<Tag>? tags;
  bool? isFavorite;
  final int? cartQuantity;
  final List<Image>? image;

  TopProduct({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.price,
    required this.averageRating,
    required this.tags,
    required this.isFavorite,
    required this.cartQuantity,
    required this.image,
  });

  factory TopProduct.fromJson(Map<String, dynamic> json) {
    return TopProduct(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      description: json["description"] ?? "",
      category: json["category"] ?? "",
      price: ProductPrice.fromJson(json["price"] ?? {}),
      averageRating: json["average_rating"]?.toDouble() ??
          0.0, // Convert and default to 0.0
      tags: List<Tag>.from(json["tags"]?.map((x) => Tag.fromJson(x)) ?? []),
      isFavorite: json["is_favorite"] ?? false,
      cartQuantity: json["cart_quantity"] ?? 0,
      image:
          List<Image>.from(json["image"]?.map((x) => Image.fromJson(x)) ?? []),
    );
  }
}

class Image {
  final int? variantId;
  final String? imageUrl;

  Image({
    required this.variantId,
    required this.imageUrl,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        variantId: json["variant_id"],
        imageUrl: json["image_url"] ?? "",
      );
}

class Tag {
  final String? color;
  final String? name;

  Tag({
    required this.color,
    required this.name,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        color: json["color"],
        name: json["name"],
      );
}

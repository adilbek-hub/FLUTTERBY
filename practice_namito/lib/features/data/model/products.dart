class ProductModel {
  int? count;
  String? next;
  String? previous;
  List<Products>? products;
  int? pageSize;
  int? totalPage;

  ProductModel(
      {this.count,
      this.next,
      this.previous,
      this.products,
      this.pageSize,
      this.totalPage});

  ProductModel.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'];
    previous = json['previous'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    pageSize = json['page_size'];
    totalPage = json['total_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    data['page_size'] = pageSize;
    return data;
  }
}

class Products {
  int? id;
  String? name;
  String? description;
  String? category;
  ProductPrice? price;
  int? averageRating;
  List<Tags>? tags;
  bool? isFavorite;
  int? cartQuantity;
  List<String>? image;
  List<Characteristics>? characteristics;

  Products(
      {this.id,
      this.name,
      this.description,
      this.category,
      this.price,
      this.averageRating,
      this.tags,
      this.isFavorite,
      this.cartQuantity,
      this.characteristics,
      this.image});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    category = json['category'];
    price = json['price'] != null ? ProductPrice.fromJson(json['price']) : null;
    averageRating = json['average_rating']?.toInt();
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    isFavorite = json['is_favorite'];
    cartQuantity = json['cart_quantity'];
    if (json['characteristics'] != null) {
      characteristics = <Characteristics>[];
      json['characteristics'].forEach((v) {
        characteristics!.add(Characteristics.fromJson(v));
      });
    }
    image = json['images'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['category'] = category;
    if (price != null) {
      data['price'] = price!.toJson();
    }
    data['average_rating'] = averageRating;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    data['is_favorite'] = isFavorite;
    data['cart_quantity'] = cartQuantity;
    data['images'] = image;
    if (characteristics != null) {
      data['characteristics'] =
          characteristics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProductPrice {
  double? price;
  double? reducedPrice;

  ProductPrice({this.price, this.reducedPrice});

  ProductPrice.fromJson(Map<String, dynamic> json) {
    price = json['price']?.toDouble();
    reducedPrice = json['reduced_price']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['price'] = price;
    data['reduced_price'] = reducedPrice;
    return data;
  }
}

class Tags {
  String? color;
  String? name;

  Tags({this.color, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    color = json['color'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['color'] = color;
    data['name'] = name;
    return data;
  }
}

class ProductImage {
  int? variantId;
  String? imageUrl;

  ProductImage({this.variantId, this.imageUrl});

  ProductImage.fromJson(Map<String, dynamic> json) {
    variantId = json['variant_id'];
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['variant_id'] = variantId;
    data['image_url'] = imageUrl;
    return data;
  }
}

class Characteristics {
  String? key;
  String? value;

  Characteristics({this.key, this.value});

  Characteristics.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['key'] = key;
    data['value'] = value;
    return data;
  }
}

import 'package:practice_namito/features/data/model/order_model.dart';
import 'package:practice_namito/features/data/model/products.dart';

class ProductDetailModel {
  int? id;
  String? name;
  String? description;
  int? category;
  List<Variants>? variants;
  int? averageRating;
  List<Tags>? tags;
  bool? isFavorite;
  int? cartQuantity;
  int? ratingCount;
  List<Characteristics>? characteristics;
  List<Reviews>? reviews;
  bool? reviewAllowed;
  int? reviewCount;
  Brand? brand;
  List<Images>? images;

  ProductDetailModel({
    this.id,
    this.name,
    this.description,
    this.category,
    this.variants,
    this.averageRating,
    this.tags,
    this.isFavorite,
    this.cartQuantity,
    this.ratingCount,
    this.characteristics,
    this.reviews,
    this.reviewAllowed,
    this.reviewCount,
    this.brand,
    this.images,
  });

  ProductDetailModel copyWith({
    int? id,
    String? name,
    String? description,
    int? category,
    List<Variants>? variants,
    int? averageRating,
    List<Tags>? tags,
    bool? isFavorite,
    int? cartQuantity,
    int? ratingCount,
    List<Characteristics>? characteristics,
  }) {
    return ProductDetailModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      variants: variants ?? this.variants,
      averageRating: averageRating ?? this.averageRating,
      tags: tags ?? this.tags,
      isFavorite: isFavorite ?? this.isFavorite,
      cartQuantity: cartQuantity ?? this.cartQuantity,
      ratingCount: ratingCount ?? this.ratingCount,
      characteristics: characteristics ?? this.characteristics,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['category'] = category;
    if (variants != null) {
      data['variants'] = variants!.map((v) => v.toJson()).toList();
    }
    data['average_rating'] = averageRating;
    if (tags != null) {
      data['tags'] = tags!.map((v) => v.toJson()).toList();
    }
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    data['is_favorite'] = isFavorite;
    data['cart_quantity'] = cartQuantity;
    data['review_count'] = reviewCount;
    if (characteristics != null) {
      data['characteristics'] =
          characteristics!.map((v) => v.toJson()).toList();
    }
    if (reviews != null) {
      data['reviews'] = reviews!.map((v) => v.toJson()).toList();
    }
    data['review_allowed'] = reviewAllowed;
    return data;
  }

  ProductDetailModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    category = json['category'];
    if (json['variants'] != null) {
      variants = <Variants>[];
      json['variants'].forEach((v) {
        variants!.add(Variants.fromJson(v));
      });
    }
    averageRating = json['average_rating']?.toInt();
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(Tags.fromJson(v));
      });
    }
    if (json['characteristics'] != null) {
      characteristics = <Characteristics>[];
      json['characteristics'].forEach((v) {
        characteristics!.add(Characteristics.fromJson(v));
      });
    }
    isFavorite = json['is_favorite'];
    cartQuantity = json['cart_quantity'];
    ratingCount = json['rating_count']?.toInt();
    reviewCount = json['review_count'];
    reviewAllowed = json['review_allowed'];
    if (json['reviews'] != null) {
      reviews = <Reviews>[];
      json['reviews'].forEach((v) {
        reviews!.add(Reviews.fromJson(v));
      });
    }
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
  }
  @override
  String toString() =>
      "ProductDetailModel(id: $id,name: $name,description: $description,category: $category,variants: $variants,averageRating: $averageRating,tags: $tags,isFavorite: $isFavorite,cartQuantity: $cartQuantity,ratingCount: $ratingCount,characteristics: $characteristics)";

  @override
  int get hashCode => Object.hash(
      id,
      name,
      description,
      category,
      variants,
      averageRating,
      tags,
      isFavorite,
      cartQuantity,
      ratingCount,
      characteristics);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductDetailModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description &&
          category == other.category &&
          variants == other.variants &&
          averageRating == other.averageRating &&
          tags == other.tags &&
          isFavorite == other.isFavorite &&
          cartQuantity == other.cartQuantity &&
          ratingCount == other.ratingCount &&
          characteristics == other.characteristics;
}

class Variants {
  int? id;
  OrderProductColor? color;
  ProductSize? size;
  double? price;
  double? discountedPrice;
  int? stock;
  double? discountValue;
  String? discountType;
  bool? main;
  String? product;

  Variants(
      {this.id,
      this.color,
      this.size,
      this.price,
      this.discountedPrice,
      this.stock,
      this.discountValue,
      this.discountType,
      this.main,
      this.product});

  Variants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    color = json['color'] != null
        ? OrderProductColor.fromJson(json['color'])
        : null;
    size = json['size'] != null ? ProductSize.fromJson(json['size']) : null;
    price = json['price']?.toDouble();
    discountedPrice = json['discounted_price']?.toDouble();
    stock = json['stock'];
    discountValue = json['discount_value']?.toDouble();
    discountType = json['discount_type'];
    main = json['main'];
    product = json['product'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (color != null) {
      data['color'] = color!.toJson();
    }
    if (size != null) {
      data['size'] = size!.toJson();
    }
    data['price'] = price;
    data['discounted_price'] = discountedPrice;
    data['stock'] = stock;
    data['discount_value'] = discountValue;
    data['discount_type'] = discountType;
    data['main'] = main;
    data['product'] = product;
    return data;
  }
}

class ProductSize {
  int? id;
  String? name;
  String? description;

  ProductSize({
    this.id,
    this.name,
    this.description,
  });

  ProductSizeModel copyWith({
    int? id,
    String? name,
    String? description,
  }) {
    return ProductSizeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
    };
  }

  factory ProductSize.fromJson(Map<String, dynamic> json) {
    return ProductSize(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
    );
  }

  @override
  String toString() => "Size(id: $id,name: $name,description: $description)";

  @override
  int get hashCode => Object.hash(id, name, description);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductSizeModel &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          description == other.description;
}

class ProductImages {
  int? id;
  String? image;
  bool? mainImage;
  int? variant;

  ProductImages({
    this.id,
    this.image,
    this.mainImage,
    this.variant,
  });

  ProductImages copyWith({
    int? id,
    String? image,
    bool? mainImage,
    int? variant,
  }) {
    return ProductImages(
      id: id ?? this.id,
      image: image ?? this.image,
      mainImage: mainImage ?? this.mainImage,
      variant: variant ?? this.variant,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image': image,
      'main_image': mainImage,
      'variant': variant,
    };
  }

  factory ProductImages.fromJson(Map<String, dynamic> json) {
    return ProductImages(
      id: json['id'] as int?,
      image: json['image'] as String?,
      mainImage: json['main_image'] as bool?,
      variant: json['variant'] as int?,
    );
  }

  @override
  String toString() =>
      "Images(id: $id,image: $image,mainImage: $mainImage,variant: $variant)";

  @override
  int get hashCode => Object.hash(id, image, mainImage, variant);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductImages &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          image == other.image &&
          mainImage == other.mainImage &&
          variant == other.variant;
}

class Tags {
  String? color;
  String? name;

  Tags({
    this.color,
    this.name,
  });

  Tags copyWith({
    String? color,
    String? name,
  }) {
    return Tags(
      color: color ?? this.color,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'color': color,
      'name': name,
    };
  }

  factory Tags.fromJson(Map<String, dynamic> json) {
    return Tags(
      color: json['color'] as String?,
      name: json['name'] as String?,
    );
  }

  @override
  String toString() => "Tags(color: $color,name: $name)";

  @override
  int get hashCode => Object.hash(color, name);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Tags &&
          runtimeType == other.runtimeType &&
          color == other.color &&
          name == other.name;
}

class Reviews {
  int? id;
  int? product;
  User? user;
  String? text;
  String? createdAt;
  String? updatedAt;
  int? rating;
  List<Images>? images;

  Reviews(
      {this.id,
      this.product,
      this.user,
      this.text,
      this.createdAt,
      this.updatedAt,
      this.rating,
      this.images});

  Reviews.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    product = json['product'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    text = json['text'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    rating = json['rating'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product'] = product;
    if (user != null) {
      data['user'] = user!.toJson();
    }
    data['text'] = text;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['rating'] = rating;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Images {
  int? id;
  String? image;
  String? smallImage;
  bool? mainImage;
  int? product;
  int? color;

  Images(
      {this.id,
      this.image,
      this.smallImage,
      this.mainImage,
      this.product,
      this.color});

  Images.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    smallImage = json['small_image'];
    mainImage = json['main_image'];
    product = json['product'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['small_image'] = smallImage;
    data['main_image'] = mainImage;
    data['product'] = product;
    data['color'] = color;
    return data;
  }
}

class User {
  int? id;
  String? name;
  String? profilePicture;

  User({this.id, this.name, this.profilePicture});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['full_name'];
    profilePicture = json['profile_picture'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['full_name'] = name;
    data['profile_picture'] = profilePicture;
    return data;
  }
}

class Brand {
  String? name;
  String? logo;

  Brand({this.name, this.logo});

  Brand.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['logo'] = logo;
    return data;
  }
}

class OrderModel {
  int? id;
  int? cart;
  double? totalAmount;
  int? paymentStatus;
  int? status;
  String? createdAt;
  String? finishedAt;
  List<OrderItems>? items;
  String? deliveryMethod;
  UserAddress? userAddress;
  String? paymentMethod;

  OrderModel(
      {this.id,
      this.cart,
      this.totalAmount,
      this.paymentStatus,
      this.status,
      this.createdAt,
      this.finishedAt,
      this.items,
      this.deliveryMethod,
      this.userAddress,
      this.paymentMethod});

  OrderModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    cart = json['cart'];
    totalAmount = json['total_amount']?.toDouble();
    paymentStatus = json['payment_status'];
    status = json['status'];
    createdAt = json['created_at'];
    finishedAt = json['finished_at'];
    if (json['items'] != null) {
      items = <OrderItems>[];
      json['items'].forEach((v) {
        items!.add(OrderItems.fromJson(v));
      });
    }
    deliveryMethod = json['delivery_method'];
    userAddress = json['user_address'] != null
        ? UserAddress.fromJson(json['user_address'])
        : null;
    paymentMethod = json['payment_method'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['cart'] = cart;
    data['total_amount'] = totalAmount;
    data['payment_status'] = paymentStatus;
    data['status'] = status;
    data['created_at'] = createdAt;
    data['finished_at'] = finishedAt;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    data['delivery_method'] = deliveryMethod;
    if (userAddress != null) {
      data['user_address'] = userAddress!.toJson();
    }
    data['payment_method'] = paymentMethod;
    return data;
  }
}

class OrderItems {
  int? id;
  ProductVariants? productVariant;
  int? quantity;
  String? productName;
  String? productImage;
  String? productId;

  OrderItems(
      {this.id,
      this.productVariant,
      this.quantity,
      this.productName,
      this.productImage,
      this.productId});

  OrderItems.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productVariant = json['product_variant'] != null
        ? ProductVariants.fromJson(json['product_variant'])
        : null;
    quantity = json['quantity'];
    productName = json['product_name'];
    productImage = json['product_image'];
    productId = json['product_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (productVariant != null) {
      data['product_variants'] = productVariant!.toJson();
    }
    data['quantity'] = quantity;
    data['product_name'] = productName;
    return data;
  }
}

class ProductVariants {
  int? id;
  OrderProductColor? color;
  ProductSizeModel? size;
  double? price;
  double? discountedPrice;
  int? stock;
  double? discountValue;
  String? discountType;
  bool? main;
  String? product;

  ProductVariants(
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

  ProductVariants.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    color = json['color'] != null
        ? OrderProductColor.fromJson(json['color'])
        : null;
    size =
        json['size'] != null ? ProductSizeModel.fromJson(json['size']) : null;
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

class OrderProductColor {
  int? id;
  String? name;
  String? nameEn;
  String? nameRu;
  String? color;

  OrderProductColor({this.id, this.name, this.nameEn, this.nameRu, this.color});

  OrderProductColor.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameEn = json['name_en'];
    nameRu = json['name_ru'];
    color = json['color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['name_en'] = nameEn;
    data['name_ru'] = nameRu;
    data['color'] = color;
    return data;
  }
}

class ProductSizeModel {
  int? id;
  String? name;
  String? nameEn;
  String? nameRu;
  String? description;

  ProductSizeModel(
      {this.id, this.name, this.nameEn, this.nameRu, this.description});

  ProductSizeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameEn = json['name_en'];
    nameRu = json['name_ru'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['name_en'] = nameEn;
    data['name_ru'] = nameRu;
    data['description'] = description;
    return data;
  }
}

class ImagesOrder {
  int? id;
  String? image;
  String? smallImage;
  bool? mainImage;
  int? product;
  int? color;

  ImagesOrder(
      {this.id,
      this.image,
      this.smallImage,
      this.mainImage,
      this.product,
      this.color});

  ImagesOrder.fromJson(Map<String, dynamic> json) {
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

class UserAddress {
  String? city;
  String? street;
  String? apartmentNumber;
  String? entrance;
  String? floor;
  String? intercom;
  bool? isPrimary;

  UserAddress(
      {this.city,
      this.street,
      this.apartmentNumber,
      this.entrance,
      this.floor,
      this.intercom,
      this.isPrimary});

  UserAddress.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    street = json['street'];
    apartmentNumber = json['apartment_number'];
    entrance = json['entrance'];
    floor = json['floor'];
    intercom = json['intercom'];
    isPrimary = json['is_primary'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['street'] = street;
    data['apartment_number'] = apartmentNumber;
    data['entrance'] = entrance;
    data['floor'] = floor;
    data['intercom'] = intercom;
    data['is_primary'] = isPrimary;
    return data;
  }
}

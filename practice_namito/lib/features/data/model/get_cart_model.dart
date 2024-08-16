import 'product_detail_model.dart';

class GetCartProductModel {
  int? id;
  int? user;
  String? createdAt;
  List<Items>? items;

  GetCartProductModel({this.id, this.user, this.createdAt, this.items});

  GetCartProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    createdAt = json['created_at'];
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user'] = user;
    data['created_at'] = createdAt;
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  int? id;
  String? productName;
  Variants? productVariant;
  int? quantity;
  bool? toPurchase;
  String? productImage;
  int? productId;

  Items(
      {this.id,
      this.productVariant,
      this.quantity,
      this.toPurchase,
      this.productImage,
      this.productName,
      this.productId});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['product_name'];
    productVariant = json['product_variant'] != null
        ? Variants.fromJson(json['product_variant'])
        : null;
    quantity = json['quantity'];
    toPurchase = json['to_purchase'];
    productImage = json['product_image'];
    productId = json['product_id']?.toInt();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['product_name'] = productName;
    data['quantity'] = quantity;
    data['to_purchase'] = toPurchase;
    return data;
  }
}

class Size {
  int? id;
  String? name;
  String? description;

  Size({this.id, this.name, this.description});

  Size.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}

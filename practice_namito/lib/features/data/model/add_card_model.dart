class AddCartModel {
  int? productVariant;
  int? quantity;
  bool? toPurchase;

  AddCartModel({this.productVariant, this.quantity, this.toPurchase});

  AddCartModel.fromJson(Map<String, dynamic> json) {
    productVariant = json['product_variant'];
    quantity = json['quantity'];
    toPurchase = json['to_purchase'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['product_variant'] = productVariant;
    data['quantity'] = quantity;
    data['to_purchase'] = toPurchase;
    return data;
  }
}

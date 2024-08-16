part of 'product_detail_bloc.dart';

sealed class ProductDetailEvent extends Equatable {
  const ProductDetailEvent();

  @override
  List<Object> get props => [];
}

class GetProductDetail extends ProductDetailEvent {
  final int productId;
  const GetProductDetail({required this.productId});
}

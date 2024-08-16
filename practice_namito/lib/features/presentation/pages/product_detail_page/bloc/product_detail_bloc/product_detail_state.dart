part of 'product_detail_bloc.dart';

sealed class ProductDetailState extends Equatable {
  const ProductDetailState();

  @override
  List<Object> get props => [];
}

final class ProductDetailInitial extends ProductDetailState {}

final class ProductDetailLoading extends ProductDetailState {}

final class ProductDetailSuccess extends ProductDetailState {
  final ProductDetailModel productDetail;
  const ProductDetailSuccess({required this.productDetail});
}

final class ProductDetailError extends ProductDetailState {
  final String message;
  const ProductDetailError({required this.message});
}

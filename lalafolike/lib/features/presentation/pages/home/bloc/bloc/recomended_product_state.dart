part of 'recomended_product_bloc.dart';

abstract class ProductState extends Equatable {
  const ProductState();

  @override
  List<Object?> get props => [];
}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<ProductsFromFirbase> recommendedProducts;
  final List<ProductsFromFirbase> products;

  const ProductLoaded(
      {required this.recommendedProducts, required this.products});
}

class ProductError extends ProductState {
  final String message;

  const ProductError(this.message);
}

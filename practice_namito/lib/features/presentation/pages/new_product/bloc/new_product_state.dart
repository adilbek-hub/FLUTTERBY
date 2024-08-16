import 'package:equatable/equatable.dart';
import 'package:practice_namito/features/data/model/products.dart';

sealed class NewProductsState extends Equatable {
  const NewProductsState();

  @override
  List<Object> get props => [];
}

final class NewProductsInitial extends NewProductsState {}

final class NewProductLoading extends NewProductsState {}

final class NewProductSuccess extends NewProductsState {
  const NewProductSuccess({required this.dataNewProduct});
  final List<Products> dataNewProduct;

  @override
  List<Object> get props => [dataNewProduct];
}

final class NewProductsError extends NewProductsState {
  final String message;
  const NewProductsError(this.message);

  @override
  List<Object> get props => [message];
}

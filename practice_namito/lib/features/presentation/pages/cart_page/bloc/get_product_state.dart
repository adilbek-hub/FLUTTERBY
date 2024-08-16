part of 'get_product_bloc.dart';

sealed class GetProductState extends Equatable {
  const GetProductState();

  @override
  List<Object> get props => [];
}

final class GetProductInitial extends GetProductState {}

final class GetProductLoading extends GetProductState {}

final class GetProductSuccess extends GetProductState {
  const GetProductSuccess({required this.getCartProductModel});
  final GetCartProductModel getCartProductModel;
}

final class GetProductError extends GetProductState {
  const GetProductError({required this.message});
  final String message;
}

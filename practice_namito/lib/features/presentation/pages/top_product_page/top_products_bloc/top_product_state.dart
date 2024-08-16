part of 'top_product_bloc.dart';

sealed class TopProductState extends Equatable {
  const TopProductState();

  @override
  List<Object> get props => [];
}

final class TopProductInitial extends TopProductState {}

final class TopProductLoading extends TopProductState {}

final class TopProductSuccess extends TopProductState {
  final List<TopProduct> topProduct;
  const TopProductSuccess({required this.topProduct});

  @override
  List<Object> get props => [topProduct];
}

final class TopProductError extends TopProductState {
  final String message;
  const TopProductError(this.message);

  @override
  List<Object> get props => [message];
}

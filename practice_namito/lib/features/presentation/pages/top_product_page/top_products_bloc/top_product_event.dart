part of 'top_product_bloc.dart';

sealed class TopProductEvent extends Equatable {
  const TopProductEvent();

  @override
  List<Object> get props => [];
}

class GetTopProductEvent extends TopProductEvent {
  const GetTopProductEvent();

  @override
  List<Object> get props => [];
}

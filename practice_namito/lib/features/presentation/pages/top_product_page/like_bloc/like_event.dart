part of 'like_bloc.dart';

sealed class LikeEvent extends Equatable {
  const LikeEvent();

  @override
  List<Object> get props => [];
}

class LikeProductEvent extends LikeEvent {
  const LikeProductEvent({required this.productId});
  final int productId;

  @override
  List<Object> get props => [productId];
}

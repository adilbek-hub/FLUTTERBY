part of 'like_bloc.dart';

sealed class LikeState extends Equatable {
  const LikeState();

  @override
  List<Object> get props => [];
}

final class LikeInitial extends LikeState {}

class LikeLoading extends LikeState {}

class LikeSuccess extends LikeState {
  final String response;
  final int productId;
  final bool isLiked;

  const LikeSuccess({
    required this.response,
    required this.productId,
    required this.isLiked,
  });
}

class LikeError extends LikeState {
  const LikeError({required this.error});
  final String error;

  @override
  List<Object> get props => [error];
}

class Unauthorized extends LikeState {
  final String errorMessage;

  const Unauthorized({required this.errorMessage});
}

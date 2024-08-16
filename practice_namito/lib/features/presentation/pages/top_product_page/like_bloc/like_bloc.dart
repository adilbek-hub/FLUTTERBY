import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';

part 'like_event.dart';
part 'like_state.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {
  final LikeRepo likeRepo;

  LikeBloc(this.likeRepo) : super(LikeInitial()) {
    on<LikeProductEvent>((event, emit) async {
      emit(LikeLoading());
      try {
        final Response response =
            await likeRepo.like(productId: event.productId);
        String message = response.data["message"];
        bool isLiked = message == "Added to favorites.";
        emit(LikeSuccess(
          response: message,
          productId: event.productId,
          isLiked: isLiked,
        ));
      } on DioException catch (e) {
        if (e.response?.statusCode == 401) {
          emit(Unauthorized(
            errorMessage: e.response?.data["detail"],
          ));
        } else {
          emit(LikeError(
            error: e.response?.data["detail"],
          ));
        }
      }
    });
  }
}

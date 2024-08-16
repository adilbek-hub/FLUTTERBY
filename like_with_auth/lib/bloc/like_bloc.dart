import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'like_event.dart';
part 'like_state.dart';

class LikeBloc extends Bloc<LikeEvent, LikeState> {
  LikeBloc() : super(LikeInitial()) {
    on<LikeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

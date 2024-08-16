import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/login_repo.dart';

part 'login_bloc_event.dart';
part 'login_bloc_state.dart';

class LoginBloc extends Bloc<LoginBlocEvent, LoginBlocState> {
  final LoginRepo loginRepo;
  LoginBloc({required this.loginRepo}) : super(LoginBlocInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(LoginBlocLoading());
      try {
        await loginRepo.login(phoneNumber: event.phoneNumber);
        emit(LoginBlocSuccess());
      } on DioException catch (e) {
        emit(LoginBlocError(error: e.toString()));
      }
    });
  }
}

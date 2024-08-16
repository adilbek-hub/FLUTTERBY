import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:rest_api_with_bloc/services/home_service.dart';

import '../user_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this.homeService) : super(const HomeState());
  //1
  final HomeService homeService;
  //2 => state
  //3=> state
  //4
  Future<void> getUsers() async {
    emit(const HomeState(status: Fetchstatus.loading));
    final users = await homeService.getUsers();
    if (users != null) {
      emit(HomeState(status: Fetchstatus.success, users: users));
    } else {
      emit(const HomeState(status: Fetchstatus.error));
    }
  }
}

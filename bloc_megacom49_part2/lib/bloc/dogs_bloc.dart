import 'package:bloc_megacom49_part2/model.dart';
import 'package:bloc_megacom49_part2/repo/repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'dogs_event.dart';
part 'dogs_state.dart';

class DogsBloc extends Bloc<DogsEvent, DogsState> {
  DogsBloc({required this.repository}) : super(DogsInitial()) {
    on<GetDogEvent>(
      (event, emit) async {
        try {
          emit(DogsLoading());
          final model = await repository.getData();
          emit(DogsSuccess(dogModel: model));
        } catch (e) {
          emit(
            DogsError(
              textError: e.toString(),
            ),
          );
        }
      },
    );
  }
  //Зависимость, я это беру откудо то извне,  это называется инекция зависимости.(DI) У меня есть зависимость GetDogsRepository
  final GetDogsRepository repository;
}

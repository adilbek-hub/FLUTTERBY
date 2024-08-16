import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:meta/meta.dart';

part 'example_event.dart';
part 'example_state.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleInitial()) {
    on<PrintEvent>((event, emit) async {
      //emit - как только наступил PrintEvent, первым делом  мы должны UI отправить состояния загрузки.
      emit(ExampleLoading());
      await Future.delayed(const Duration(seconds: 3));
      try {
        final int izmenonniyData = int.parse(event.data);
        emit(ExampleSuccess(returnedData: izmenonniyData));
        print(event.data);
        print(izmenonniyData);
      } catch (e) {
        emit(ExampleError(errorText: e.toString()));
      }
    });
  }
}

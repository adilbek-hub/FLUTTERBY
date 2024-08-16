part of 'dogs_bloc.dart';

@immutable
sealed class DogsState {}

final class DogsInitial extends DogsState {}

final class DogsLoading extends DogsState {}

final class DogsSuccess extends DogsState {
  final DogModel dogModel;

  DogsSuccess({required this.dogModel});
}

final class DogsError extends DogsState {
  final String textError;
  DogsError({required this.textError});
}

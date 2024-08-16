part of 'dogs_bloc.dart';

@immutable
sealed class DogsEvent {}

class GetDogEvent extends DogsEvent {}

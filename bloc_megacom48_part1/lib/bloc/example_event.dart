part of 'example_bloc.dart';

@immutable
sealed class ExampleEvent {}

class PrintEvent extends ExampleEvent {
  final String data;

  PrintEvent({required this.data});
}

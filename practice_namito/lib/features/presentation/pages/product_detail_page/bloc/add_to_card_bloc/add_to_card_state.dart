part of 'add_to_card_bloc.dart';

sealed class AddToCardState extends Equatable {
  const AddToCardState();

  @override
  List<Object> get props => [];
}

final class AddToCardInitial extends AddToCardState {}

final class AddToCardLoading extends AddToCardState {}

final class AddToCardSuccess extends AddToCardState {
  const AddToCardSuccess();
}

final class AddToCardError extends AddToCardState {
  const AddToCardError({required this.message});
  final String message;

  @override
  List<Object> get props => [message];
}

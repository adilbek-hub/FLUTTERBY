part of 'add_to_card_bloc.dart';

sealed class AddToCardEvent extends Equatable {
  const AddToCardEvent();

  @override
  List<Object> get props => [];
}

class AddToCard extends AddToCardEvent {
  const AddToCard({required this.addCartModel});
  final AddCartModel addCartModel;
  @override
  List<Object> get props => [addCartModel];
}

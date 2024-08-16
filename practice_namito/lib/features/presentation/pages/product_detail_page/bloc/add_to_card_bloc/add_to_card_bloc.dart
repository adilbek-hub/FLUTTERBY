import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/model/add_card_model.dart';
import 'package:practice_namito/features/data/repo/cart_repo.dart';

part 'add_to_card_event.dart';
part 'add_to_card_state.dart';

class AddToCardBloc extends Bloc<AddToCardEvent, AddToCardState> {
  final CartRepo cardRepo;
  AddToCardBloc({required this.cardRepo}) : super(AddToCardInitial()) {
    on<AddToCard>(_onAddToCard);
  }

  Future<void> _onAddToCard(
      AddToCard event, Emitter<AddToCardState> emit) async {
    emit(AddToCardLoading());
    try {
      await cardRepo.addToCart(variant: event.addCartModel);
      emit(const AddToCardSuccess());
    } catch (e) {
      emit(AddToCardError(message: e.toString()));
    }
  }
}

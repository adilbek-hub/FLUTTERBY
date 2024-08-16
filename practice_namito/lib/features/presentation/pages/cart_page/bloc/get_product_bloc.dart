import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/model/get_cart_model.dart';
import 'package:practice_namito/features/data/repo/cart_repo.dart';

part 'get_product_event.dart';
part 'get_product_state.dart';

class GetProductBloc extends Bloc<GetProductEvent, GetProductState> {
  final CartRepo cardRepo;
  GetProductBloc({required this.cardRepo}) : super(GetProductInitial()) {
    on<GetProductEvent>((event, emit) async {
      emit(GetProductLoading());
      try {
        final getProduct = await cardRepo.getCartProducts();
        emit(GetProductSuccess(getCartProductModel: getProduct));
      } catch (e) {
        emit(GetProductError(message: e.toString()));
      }
    });
  }
}

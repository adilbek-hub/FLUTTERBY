import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/model/top_product_model.dart';
import 'package:practice_namito/features/data/repo/top_product_repo.dart';

part 'top_product_event.dart';
part 'top_product_state.dart';

class TopProductBloc extends Bloc<TopProductEvent, TopProductState> {
  final TopProductsService topProductsService;
  TopProductBloc({required this.topProductsService})
      : super(TopProductInitial()) {
    on<GetTopProductEvent>((event, emit) async {
      emit(TopProductLoading());
      try {
        final topProduct = await topProductsService.getData();
        emit(TopProductSuccess(topProduct: topProduct));
      } catch (e) {
        emit(TopProductError(e.toString()));
      }
    });
  }
}

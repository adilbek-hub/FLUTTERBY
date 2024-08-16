import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/new_products_repo.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_event.dart';
import 'package:practice_namito/features/presentation/pages/new_product/bloc/new_product_state.dart';

class NewProductBloc extends Bloc<NewProductsEvent, NewProductsState> {
  final NewProductsService newProductsService;

  NewProductBloc(this.newProductsService) : super(NewProductsInitial()) {
    on<NewProductsInitialEvent>(_getData);
  }

  Future<void> _getData(
      NewProductsInitialEvent event, Emitter<NewProductsState> emit) async {
    try {
      emit(NewProductLoading());
      final newProduct = await newProductsService.getData();
      emit(NewProductSuccess(dataNewProduct: newProduct));
    } on DioException catch (e) {
      emit(NewProductsError(e.response!.data.toString()));
    }
  }
}

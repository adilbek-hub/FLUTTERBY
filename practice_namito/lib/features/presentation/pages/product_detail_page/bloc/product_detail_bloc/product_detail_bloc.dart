import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:practice_namito/features/data/model/product_detail_model.dart';
import 'package:practice_namito/features/data/repo/product_detail_repo.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final ProductDetailRepo productDetailRepo;
  ProductDetailBloc({required this.productDetailRepo})
      : super(ProductDetailInitial()) {
    on<GetProductDetail>((event, emit) async {
      emit(ProductDetailLoading());
      try {
        final ProductDetailModel productDetailModel = await productDetailRepo
            .getProductDetail(productId: event.productId);
        emit(ProductDetailSuccess(productDetail: productDetailModel));
      } catch (e) {
        emit(ProductDetailError(message: e.toString()));
      }
    });
  }
}

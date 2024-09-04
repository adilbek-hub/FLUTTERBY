import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';

part 'recomended_product_event.dart';
part 'recomended_product_state.dart';



// class ProductBloc extends Bloc<ProductEvent, ProductState> {
//   final FirebaseFirestore firestore;

//   ProductBloc(this.firestore) : super(ProductInitial()) {
//     on<FetchProduct>(_onFetchProduct);
//   }

//   Future<void> _onFetchProduct(FetchProduct event, Emitter<ProductState> emit) async {
//     emit(ProductLoading());

//     try {
//       DocumentSnapshot doc = await firestore.collection('recommendedProducts').doc().get();

//       if (doc.exists) {
//         ProductModel product = ProductModel.fromFirestore(doc);
//         emit(ProductLoaded( products: [product], recommendedProducts: [product]));
//       } else {
//         emit(ProductError('Product not found'));
//       }
//     } catch (e) {
//       emit(ProductError('Failed to fetch product: $e'));
//     }
//   }
// }

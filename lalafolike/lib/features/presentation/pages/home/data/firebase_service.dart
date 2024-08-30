import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';

// class FirebaseService {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final String productsCollection = 'products';

//   Future<List<ProductModel>> getProducts() async {
//     try {
//       final snapshot = await _firestore.collection(productsCollection).get();
//       return snapshot.docs.map((doc) => ProductModel.fromFirestore(doc)).toList();
//     } catch (e) {
//       print('Error fetching products: $e');
//       return [];
//     }
//   }
// }
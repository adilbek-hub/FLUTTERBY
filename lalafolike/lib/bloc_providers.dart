import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/home/bloc/bloc/recomended_product_bloc.dart';
import 'package:provider/provider.dart';



// class AppProviders extends StatelessWidget {
//   final Widget child;

//   const AppProviders({Key? key, required this.child}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<ProductBloc>(
//           create: (_) => ProductBloc(FirebaseFirestore.instance),
    
//         ),
//         // Add more providers here
//       ],
//       child: child,
//     );
//   }
// }
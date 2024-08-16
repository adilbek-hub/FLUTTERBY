// import 'package:flutter/material.dart';
// import 'package:like_lalafo/features/presentation/pages/home/model/category.dart';
// import 'package:like_lalafo/features/presentation/pages/home/pages/category/category_children.dart';

// class ChildTile extends StatelessWidget {
//   const ChildTile({
//     super.key,
//     required this.child,
//     required this.categoryName,
//   });

//   final Children child;
//   final Category categoryName;

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       title: Text(child.name),
//       subtitle: Text('${child.price} KGS'),
//       onTap: child.children != null
//           ? () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => CategoryChildrenPage(
//                     category: categoryName,
//                     children: child.children!,
//                   ),
//                 ),
//               );
//             }
//           : null,
//     );
//   }
// }

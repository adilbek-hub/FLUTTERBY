import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/like_manager.dart';
import 'package:practice_namito/features/data/model/products.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';

class NewProductCard extends StatelessWidget {
  const NewProductCard({
    super.key,
    required this.product,
  });

  final Products product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              productId: product.id ?? 0,
            ),
          ),
        );
      },
      child: Card(
          child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: 151,
                height: 171,
                child: Card(
                  child: Image.network(
                    product.image!.first,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Text(product.name ?? ''),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amberAccent),
                onPressed: () {},
                child: const Text('Add to cart'),
              ),
            ],
          ),
          Positioned(
            top: 7,
            right: 7,
            child: CircleAvatar(
              child: BlocBuilder<LikeBloc, LikeState>(
                builder: (context, likeState) {
                  bool isLiked = product.isFavorite ?? false;
                  if (likeState is LikeSuccess &&
                      likeState.productId == product.id) {
                    isLiked = likeState.isLiked;
                  }
                  return LikeButton(
                    productId: product.id ?? 0,
                    isLiked: isLiked,
                    onLiked: (isLiked) {
                      product.isFavorite = isLiked;
                    },
                  );
                },
              ),
            ),
          ),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/like_manager.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/product_detail_repo.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/bloc/product_detail_bloc/product_detail_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';

// ProductDetailPage классы
class ProductDetailPage extends StatefulWidget {
  final int productId;

  const ProductDetailPage({super.key, required this.productId});

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String? selectedImage;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductDetailBloc(
            productDetailRepo: ProductDetailRepo(),
          )..add(GetProductDetail(productId: widget.productId)),
        ),
        BlocProvider(create: (_) => LikeBloc(LikeRepo())),
      ],
      child: SafeArea(
        child: Scaffold(
          body: BlocBuilder<ProductDetailBloc, ProductDetailState>(
            builder: (context, productDetailState) {
              if (productDetailState is ProductDetailLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (productDetailState is ProductDetailSuccess) {
                final product = productDetailState.productDetail;
                if (selectedImage == null && product.images!.isNotEmpty) {
                  selectedImage = product.images!.first.image;
                }

                return SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Card(child: BackButton()),
                          BlocBuilder<LikeBloc, LikeState>(
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
                        ],
                      ),
                      Image.network(selectedImage ?? ''),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: product.images!.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedImage = product.images![index].image;
                                });
                              },
                              child: Card(
                                child: Image.network(
                                    product.images![index].image!),
                              ),
                            );
                          },
                        ),
                      ),
                      Text(product.name ?? ''),
                    ],
                  ),
                );
              } else if (productDetailState is ProductDetailError) {
                return Center(
                    child: Text('Error: ${productDetailState.message}'));
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}

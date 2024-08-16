import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/core/like_manager.dart';
import 'package:practice_namito/core/navigator.dart';
import 'package:practice_namito/features/data/repo/like_toggle.dart';
import 'package:practice_namito/features/data/repo/top_product_repo.dart';
import 'package:practice_namito/features/presentation/pages/product_detail_page/product_detail_page.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/top_products_bloc/top_product_bloc.dart';

// TopProductsPage классы
class TopProductsPage extends StatelessWidget {
  const TopProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              TopProductBloc(topProductsService: TopProductsService())
                ..add(const GetTopProductEvent()),
        ),
        BlocProvider(create: (_) => LikeBloc(LikeRepo())),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('Top Products')),
        body: BlocBuilder<TopProductBloc, TopProductState>(
          builder: (context, topProductState) {
            if (topProductState is TopProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (topProductState is TopProductSuccess) {
              final products = topProductState.topProduct;
              return RefreshIndicator.adaptive(
                onRefresh: () async => context
                    .read<TopProductBloc>()
                    .add(const GetTopProductEvent()),
                child: ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: products[index],
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(
                            productId: products[index].id ?? 0,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            } else if (topProductState is TopProductError) {
              return Center(child: Text('Error: ${topProductState.message}'));
            }
            return Container();
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => navigateToNewProducts(context),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

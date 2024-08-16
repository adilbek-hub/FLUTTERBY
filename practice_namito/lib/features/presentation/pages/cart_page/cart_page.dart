import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/data/repo/cart_repo.dart';
import 'package:practice_namito/features/presentation/pages/cart_page/bloc/get_product_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  late final GetProductBloc _getProductBloc;
  late final CartRepo _cartRepo;

  @override
  void initState() {
    super.initState();
    _cartRepo = CartRepo();
    _getProductBloc = GetProductBloc(cardRepo: _cartRepo)
      ..add(const GetProduct());
  }

  @override
  void dispose() {
    _getProductBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: BlocProvider(
        create: (context) => _getProductBloc,
        child: BlocBuilder<GetProductBloc, GetProductState>(
          builder: (context, state) {
            if (state is GetProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetProductSuccess) {
              final selectedItems = state.getCartProductModel.items
                  ?.where((item) => item.toPurchase == true)
                  .toList();
              if (selectedItems == null || selectedItems.isEmpty) {
                return const Center(
                    child: Text('No selected products in the cart.'));
              }
              return ListView.builder(
                itemCount: selectedItems.length,
                itemBuilder: (context, index) {
                  final item = selectedItems[index];
                  return ListTile(
                    leading: item.productImage != null
                        ? Image.network(item.productImage!)
                        : null,
                    title: Text(item.productName ?? 'No Name'),
                    subtitle: Text('Quantity: ${item.quantity ?? 0}'),
                  );
                },
              );
            } else if (state is GetProductError) {
              return Center(
                child: Text('Error: ${state.message}'),
              );
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ),
    );
  }
}

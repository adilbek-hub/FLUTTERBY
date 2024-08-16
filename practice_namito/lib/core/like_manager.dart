import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practice_namito/features/presentation/pages/top_product_page/like_bloc/like_bloc.dart';

// Бирдиктүү LikeButton виджети
class LikeButton extends StatefulWidget {
  final int productId;
  final bool isLiked;
  final ValueChanged<bool> onLiked;

  const LikeButton({
    super.key,
    required this.productId,
    required this.isLiked,
    required this.onLiked,
  });

  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  late bool isLiked;

  @override
  void initState() {
    super.initState();
    isLiked = widget.isLiked;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LikeBloc, LikeState>(
      listener: (context, state) {
        if (state is LikeSuccess && state.productId == widget.productId) {
          setState(() {
            isLiked = state.isLiked;
          });
          widget.onLiked(isLiked);
        }
      },
      child: IconButton(
        icon: Icon(
          Icons.thumb_up,
          color: isLiked ? Colors.red : null,
        ),
        onPressed: () => _toggleLike(context),
      ),
    );
  }

  void _toggleLike(BuildContext context) {
    context.read<LikeBloc>().add(LikeProductEvent(productId: widget.productId));
  }
}

// Бирдиктүү ProductItem виджети
class ProductItem extends StatelessWidget {
  final dynamic product;
  final VoidCallback? onTap;

  const ProductItem({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name ?? ''),
      onTap: onTap,
      trailing: LikeButton(
        productId: product.id ?? 0,
        isLiked: product.isFavorite ?? false,
        onLiked: (isLiked) {
          product.isFavorite = isLiked;
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/media.dart';

class GridViewImagesAdded extends StatelessWidget {
  const GridViewImagesAdded({
    super.key,
    required ScrollController scrollController,
    required List<Media> selectedMedias,
  })  : _scrollController = scrollController,
        _selectedMedias = selectedMedias;

  final ScrollController _scrollController;
  final List<Media> _selectedMedias;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 1,
        crossAxisSpacing: 1,
      ),
      itemBuilder: (context, index) {
        if (index < _selectedMedias.length) {
          final Media media = _selectedMedias[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.grey[350],
              child: media.widget,
            ),
          );
        } else {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.grey[350],
            ),
          );
        }
      },
      itemCount: 30,
    );
  }
}

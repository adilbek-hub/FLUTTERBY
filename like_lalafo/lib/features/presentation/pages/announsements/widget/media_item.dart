/*
7. Медиа элементтери:

Ар бир медианы торчодо (grid view) көрсөтүү үчүн MediaItem классын колдонуу керек.
 */
import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/media.dart';

class MediaItem extends StatelessWidget {
  const MediaItem(
      {super.key,
      required this.media,
      required this.isSelected,
      required this.selectMedia});
  final Media media;
  final bool isSelected;
  final Function selectMedia;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMedia(media),
      child: Stack(
        children: [
          _buildMediaWidget(),
          if (isSelected) _buildIsSelectedOverlay()
        ],
      ),
    );
  }

  Widget _buildMediaWidget() {
    return media.widget;
  }

  Widget _buildIsSelectedOverlay() {
    return Container(
      color: Colors.black.withOpacity(0.2),
      child: const Center(
        child: Icon(
          Icons.check_circle_rounded,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}

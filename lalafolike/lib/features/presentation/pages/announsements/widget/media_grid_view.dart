import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/media.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/media_item.dart';

class MediaGridView extends StatelessWidget {
  const MediaGridView(
      {super.key,
      required this.medias,
      required this.selectedMedias,
      required this.selectedMedia,
      required this.scrollController});
  final List<Media> medias;
  final List<Media> selectedMedias;
  final Function(Media) selectedMedia;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      controller: scrollController,
      physics: const BouncingScrollPhysics(),
      itemCount: medias.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 3,
        mainAxisSpacing: 5,
        maxCrossAxisExtent: 200,
      ),
      itemBuilder: (context, index) {
        return MediaItem(
            media: medias[index],
            isSelected: selectedMedias.any((element) =>
                element.assetEntity.id == medias[index].assetEntity.id),
            selectMedia: selectedMedia);
      },
    );
  }
}

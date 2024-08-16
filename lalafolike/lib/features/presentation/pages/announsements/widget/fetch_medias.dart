/*
3. Медиаларды алуу:

Белгилүү бир альбомдогу медиаларды алуу үчүн дагы photo_manager пакетин колдонуу керек.
 */

import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/media.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:photo_manager_image_provider/photo_manager_image_provider.dart';
import 'package:transparent_image/transparent_image.dart';

class FetchMedias {
  static Future<List<Media>> fetchMedias(
      {required AssetPathEntity album, required int page}) async {
    List<Media> medias = [];
    try {
      final List<AssetEntity> entities = await album.getAssetListPaged(
        page: page,
        size: 30,
      );
      for (var entity in entities) {
        Media media = Media(
          assetEntity: entity,
          widget: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: FadeInImage(
              placeholder: MemoryImage(kTransparentImage),
              image: AssetEntityImageProvider(
                entity,
                thumbnailSize: const ThumbnailSize.square(500),
                isOriginal: false,
              ),
              fit: BoxFit.cover,
            ),
          ),
        );
        medias.add(media);
      }
    } catch (e) {
      print(" Error Fetch Media: $e");
    }
    return medias;
  }
}

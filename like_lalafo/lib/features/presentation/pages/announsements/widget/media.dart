/*
 6. Медиа торчосу:

Галереяда медиаларды торчо (grid view) түрүндө көрсөтүү үчүн MediaGridView классын колдонуу керек.
 */
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:photo_manager/photo_manager.dart';

class Media {
  final AssetEntity assetEntity;
  final Widget widget;

  Media({required this.assetEntity, required this.widget});
  static Future<Media> fromXFile(XFile xFile) async {
    AssetEntity? assetEntity =
        await PhotoManager.editor.saveImageWithPath(xFile.path, title: '');
    return Media(
      assetEntity: assetEntity!,
      widget: Image.file(
        File(xFile.path),
      ),
    );
  }
}

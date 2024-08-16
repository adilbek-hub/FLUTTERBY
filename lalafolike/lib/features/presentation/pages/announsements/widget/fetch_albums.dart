/* 2. Альбомдорду алуу:

Колдонуучунун түзмөгүндөгү альбомдорду алуу үчүн photo_manager пакетин колдонуу керек.
*/
import 'package:lalafolike/features/presentation/pages/announsements/widget/grand_permission.dart';
import 'package:photo_manager/photo_manager.dart';

class FetchAlbums {
  static Future<List<AssetPathEntity>> fetchAlbums() async {
    try {
      await GrandPermission.grandPermission();
      List<AssetPathEntity> albums = await PhotoManager.getAssetPathList();
      return albums;
    } catch (e) {
      print(" Error Fetch Albums: $e");
      return [];
    }
  }
}

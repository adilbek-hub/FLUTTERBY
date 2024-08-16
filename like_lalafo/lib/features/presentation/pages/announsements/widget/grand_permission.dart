/*
 1. Телефондун сүрөттөрү жана видеолору менен иштөөдө биринчи аткарылуучу кадамдар төмөндөгүдөй:

Уруксаттарды суроо:
Телефон сүрөттөрүнө жана видеолоруна жетүү үчүн колдонуучудан уруксат алуу керек.
Тиешелүү уруксаттарды permission_handler пакетин колдонуп суроо керек.
 */
import 'package:permission_handler/permission_handler.dart';

class GrandPermission {
  static Future<void> grandPermission() async {
    try {
      final bool videosGranted = await Permission.videos.isGranted;
      final bool photosGranted = await Permission.photos.isGranted;
      if (!videosGranted || !photosGranted) {
        final Map<Permission, PermissionStatus> statues = await [
          Permission.videos,
          Permission.photos,
        ].request();

        if (statues[Permission.videos] == PermissionStatus.permanentlyDenied ||
            statues[Permission.photos] == PermissionStatus.permanentlyDenied) {
          await openAppSettings();
        }
      }
    } catch (e) {
      print(" Permission  Катасы $e");
    }
  }
}

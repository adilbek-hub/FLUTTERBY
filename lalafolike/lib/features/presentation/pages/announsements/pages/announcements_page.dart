import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/core/theme/get_theme_mode_color.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_field.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/fetch_albums.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/fetch_medias.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/grid_view_images_added.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/media.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/media_grid_view.dart';
import 'package:lalafolike/router/router.dart';
import 'package:photo_manager/photo_manager.dart';

@RoutePage()
class AnnouncementsPage extends StatefulWidget {
  const AnnouncementsPage({super.key});

  @override
  _AnnouncementsPageState createState() => _AnnouncementsPageState();
}

class _AnnouncementsPageState extends State<AnnouncementsPage> {
  final List<Media> _selectedMedias = [];

  /// Мисалы, сиз AssetPathEntity классын пайдаланып, сүрөттөрдүн альбомдорун уюштуруп, керектүү сүрөттөрдү алып, аларды көрсөтүү үчүн колдоно аласыз.
  AssetPathEntity? _currentAlbum;
  final ImagePicker _picker = ImagePicker();
  final List<Media> _medias = [];
  int _lastPage = 0;
  int _currentPage = 0;
  final ScrollController _scrollController = ScrollController();

  void _loadAlbums() async {
    List<AssetPathEntity> albums = await PhotoManager.getAssetPathList();
    if (albums.isNotEmpty) {
      setState(() {
        _currentAlbum = albums.first;
      });
    }
    _loadMedias();
  }

  void _loadMedias() async {
    _lastPage = _currentPage;
    if (_currentAlbum != null) {
      List<Media> medias = await FetchMedias.fetchMedias(
          album: _currentAlbum!, page: _currentPage);
      setState(() {
        _medias.addAll(medias);
      });
    }
  }

  int count = 0;
  final int maxLength = 6000;
  @override
  void initState() {
    super.initState();
    _loadAlbums();
    _scrollController.addListener(_loadMoreMedias);
    _controller.addListener(() {
      setState(() {
        count = _controller.text.length;
      });
    });
  }

  void _loadMoreMedias() {
    if (_scrollController.position.pixels /
            _scrollController.position.maxScrollExtent >
        0.33) {
      if (_currentPage != _lastPage) {
        _currentPage++;
        _loadMedias();
      }
    }
  }

  Future<void> _pickImageFromCamera() async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      final Media media = await Media.fromXFile(pickedFile);
      setState(() {
        _selectedMedias.add(media);
      });
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_loadMoreMedias);
    _scrollController.dispose();
    super.dispose();
  }

  void _selectedMedia(Media media) {
    bool isSelected = _selectedMedias
        .any((element) => element.assetEntity.id == media.assetEntity.id);
    setState(() {
      if (isSelected) {
        _selectedMedias.removeWhere(
            (element) => element.assetEntity.id == media.assetEntity.id);
      } else {
        _selectedMedias.add(media);
      }
    });
  }

  Future<void> handleGalleryButton() async {
    final List<Media>? result = await Navigator.push<List<Media>>(
      context,
      MaterialPageRoute(
        builder: (context) => GalleryPage(selectedMedias: _selectedMedias),
      ),
    );
    if (result != null) {
      _updateSelectedMedias(result);
    }
  }

  void _updateSelectedMedias(List<Media> result) {
    setState(() {
      _selectedMedias.clear();
      _selectedMedias.addAll(result);
    });
  }

  void _checkImageAndSubmit() {
    if (_selectedMedias.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Картинка не добавлена')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Изображение добавлено и обработано')),
      );
      context.router.push(const AnnounSementsCategoryRoute());
    }
  }

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.close)),
        title: AppText(
          title: 'Объявления',
          textType: TextType.body,
          color: getThemeModeColor.brighnessTheme(context),
        ),
        actions: const [
          AppText(
            title: 'Добавить',
            textType: TextType.body,
            color: ColorConstants.green,
          ),
          SizedBox(width: 10),
        ],
      ),
      // Ensure the widgets move when the keyboard is shown
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  LayoutBuilder(
                    builder: (context, constraints) {
                      double containerWidth =
                          (constraints.maxWidth - 6 * 2) / 4;
                      return Wrap(
                        direction: Axis.horizontal,
                        alignment: WrapAlignment.start,
                        spacing: 3.0,
                        runAlignment: WrapAlignment.start,
                        runSpacing: 5.0,
                        children: <Widget>[
                          Container(
                            width: containerWidth,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.grey,
                              ),
                              onPressed: _pickImageFromCamera,
                            ),
                          ),
                          Container(
                            width: containerWidth,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.copy_sharp,
                                color: Colors.grey,
                              ),
                              onPressed: handleGalleryButton,
                            ),
                          ),
                          ..._medias.take(6).map(
                            (media) {
                              return SizedBox(
                                width: containerWidth,
                                height: 100,
                                child: InkWell(
                                  onTap: () => _selectedMedia(media),
                                  child: Stack(
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.black.withOpacity(0.15),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: media.widget,
                                      ),
                                      if (_selectedMedias.contains(media))
                                        Positioned.fill(
                                          child: Container(
                                            color:
                                                Colors.black.withOpacity(0.1),
                                            child: const Center(
                                              child: Icon(
                                                Icons.check_circle_rounded,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppText(
                      title: 'Описание объявления',
                      textType: TextType.subtitle,
                      fontWeight: FontWeight.w800,
                      color: getThemeModeColor.brighnessTheme(context),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 100,
                child: GridViewImagesAdded(
                    scrollController: _scrollController,
                    selectedMedias: _selectedMedias),
              ),
            ),
            const SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: AppText(
                      title: 'Выбранные фото',
                      textType: TextType.promocode,
                      color: ColorConstants.grey,
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomTextField(
                    controller: _controller,
                    maxLines: 3,
                    hintText: 'Опишите ваш товар или услугу',
                    hintTextStyle: const TextStyle(color: ColorConstants.grey),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AppText(
                      title: '$count/${maxLength - count}',
                      textType: TextType.promocode,
                      color: ColorConstants.grey,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: DefElevatedButton(
          backgroundColor: ColorConstants.green,
          title: 'Добавить',
          onPressed: () {
            _checkImageAndSubmit();
          },
        ),
      ),
    );
  }
}

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key, required this.selectedMedias});
  final List<Media> selectedMedias;

  @override
  _GalleryPageState createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  ///_selectedMedias: Колдонуучу тандаган медиаларды сактайт.
  final List<Media> _selectedMedias = [];

  ///_currentAlbum: Азыркы ачылган альбомду сактайт.
  AssetPathEntity? _currentAlbum;

  ///_albums: Бардык альбомдорду сактайт.
  List<AssetPathEntity> _albums = [];
  void _loadAlbums() async {
    List<AssetPathEntity> albums = await FetchAlbums.fetchAlbums();
    if (albums.isNotEmpty) {
      setState(() {
        _currentAlbum = albums.first;
        _albums = albums;
      });
    }
    _loadMedias();
  }

  final List<Media> _medias = [];
  int _lastPage = 0;
  final int _currentPage = 0;

  void _loadMedias() async {
    _lastPage = _currentPage;
    if (_currentAlbum != null) {
      List<Media> medias = await FetchMedias.fetchMedias(
          album: _currentAlbum!, page: _currentPage);
      setState(() {
        _medias.addAll(medias);
      });
    }
  }

  @override
  void initState() {
    _selectedMedias.addAll(widget.selectedMedias);
    _loadAlbums();
    _scrollController.addListener(_loadMoreMedias);
    super.initState();
  }

  final ScrollController _scrollController = ScrollController();
  void _loadMoreMedias() {
    if (_scrollController.position.pixels /
            _scrollController.position.maxScrollExtent >
        0.33) {
      if (_currentPage != _lastPage) {
        _loadMedias();
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_loadMoreMedias);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          DropdownButton<AssetPathEntity>(
            borderRadius: BorderRadius.circular(16),
            dropdownColor: Colors.white,
            value: _currentAlbum,
            items: _albums
                .map(
                  (e) => DropdownMenuItem<AssetPathEntity>(
                    value: e,
                    child: SizedBox(
                      width: 160,
                      child: Text(
                        e.name.isEmpty ? "0" : e.name,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                _currentAlbum = value;
                _lastPage = 0;
                _medias.clear();
              });
              _loadMedias();
              _scrollController.jumpTo(0.0);
            },
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () => Navigator.pop(context, _selectedMedias),
            child: const AppText(
              title: 'Добавить',
              textType: TextType.subtitle,
              color: ColorConstants.green,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: MediaGridView(
        medias: _medias,
        selectedMedias: _selectedMedias,
        selectedMedia: _selectedMedia,
        scrollController: _scrollController,
      ),
    );
  }

  /*

4.Колдонуучу тандоолорун иштеп чыгуу:

Колдонуучу медиаларды тандаган сайын тандалгандарды жаңыртып туруу керек.
 */
  void _selectedMedia(Media media) {
    bool isSelected = _selectedMedias
        .any((element) => element.assetEntity.id == media.assetEntity.id);
    setState(() {
      if (isSelected) {
        _selectedMedias.removeWhere(
            (element) => element.assetEntity.id == media.assetEntity.id);
      } else {
        _selectedMedias.add(media);
      }
    });
  }
}

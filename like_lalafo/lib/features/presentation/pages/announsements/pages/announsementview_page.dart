import 'package:audioplayers/audioplayers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/enams/assets_constants.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/announsementviewprossent.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/caregories_images_cart.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/categories_text_cart.dart';
import 'package:like_lalafo/router/router.dart';

@RoutePage()
class AnnounsementviewPage extends StatefulWidget {
  const AnnounsementviewPage({super.key});

  @override
  State<AnnounsementviewPage> createState() => _AnnounsementviewPageState();
}

class _AnnounsementviewPageState extends State<AnnounsementviewPage> {
  final audioPlayers = AudioPlayer();
  final ValueNotifier<bool> _showCongratsNotifier = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _checkboxState = ValueNotifier<bool>(false);

  @override
  void dispose() {
    _showCongratsNotifier.dispose();
    audioPlayers.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.maybePop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 30,
            color: Colors.grey,
          ),
        ),
        title: const AppText(
          title: 'Объявление',
          textType: TextType.body,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        actions: const [
          AppText(
            title: 'Опубликовать',
            textType: TextType.body,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      const Announsementviewprossent(),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      const SizedBox(height: 6),
                      SizedBox(
                        height: 100,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisSpacing: 1,
                            crossAxisSpacing: 1,
                          ),
                          itemBuilder: (context, index) {
                            return const CategoriesImagesCart();
                          },
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: AppText(
                          title: 'Опишите ваш товар или услуги',
                          textType: TextType.body,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      const SizedBox(height: 8),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                            itemCount: 4,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return const CategoriesTextsCart();
                            }),
                      ),
                      const SizedBox(height: 8),
                      const Divider(
                        color: Colors.grey,
                        thickness: 0.5,
                      ),
                      const SizedBox(height: 20),
                    ]),
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  sliver: SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      crossAxisSpacing: 40,
                      childAspectRatio: 2,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        return const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('KGZ'),
                                Icon(
                                  Icons.chevron_right,
                                ),
                              ],
                            ),
                            Divider(
                              thickness: 0.5,
                              color: Colors.grey,
                            ),
                          ],
                        );
                      },
                      childCount: 15,
                    ),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                              title: '+996    999291210',
                              textType: TextType.body,
                              color: ColorConstants.black),
                        ),
                        const Divider(
                          color: Colors.grey,
                          thickness: 0.5,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            ValueListenableBuilder(
                                valueListenable: _checkboxState,
                                builder: (context, value, child) {
                                  return CheckboxWidget(
                                      checkboxState: _checkboxState);
                                }),
                            const SizedBox(width: 10),
                            const AppText(
                              title: 'Не показывать телефон в объявлении',
                              textType: TextType.body,
                              color: ColorConstants.black,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () =>
                              context.router.push(const GoogleMapRoute()),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            decoration: BoxDecoration(
                              border: Border.all(width: 0.5),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.location_pin,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 10),
                                    AppText(
                                      title: 'Бишкек',
                                      textType: TextType.body,
                                      color: ColorConstants.black,
                                    ),
                                  ],
                                ),
                                Icon(Icons.chevron_right, color: Colors.grey),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            context.router.push(const GoogleMapRoute());
                          },
                          child: SizedBox(
                            height: 100,
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                AssetConstants.map.png,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // ValueListenableBuilder<bool>(
          //   valueListenable: _showCongratsNotifier,
          //   builder: (context, value, child) {
          //     if (value) {
          //       return Container(
          //         height: 100,
          //         color: Colors.transparent,
          //         child: Center(
          //           child: ClipRRect(
          //             borderRadius: const BorderRadius.all(Radius.circular(10)),
          //             child: Image.asset(AssetConstants.okey.gif),
          //           ),
          //         ),
          //       );
          //     }
          //     return const SizedBox.shrink();
          //   },
          // ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: const Border(
            top: BorderSide(color: Colors.grey, width: 0.2),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: BottomAppBarButton(
          onTap: () async {
            await audioPlayers.play(AssetSource(AssetConstants.correct.mp3));
            _showCongratsNotifier.value = true;
            await Future.delayed(const Duration(seconds: 2));
            _showCongratsNotifier.value = false;
          },
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatelessWidget {
  const CheckboxWidget({
    super.key,
    required ValueNotifier<bool> checkboxState,
  }) : _checkboxState = checkboxState;

  final ValueNotifier<bool> _checkboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2.0),
        ),
        side: WidgetStateBorderSide.resolveWith(
          (states) => const BorderSide(width: 1.0, color: Colors.grey),
        ),
        hoverColor: Colors.grey,
        activeColor: Colors.green,
        checkColor: Colors.black,
        value: _checkboxState.value,
        onChanged: (bool? value) {
          _checkboxState.value = value!;
        });
  }
}

class BottomAppBarButton extends StatelessWidget {
  const BottomAppBarButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: AppText(
              title: 'Опубликовать',
              textType: TextType.body,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

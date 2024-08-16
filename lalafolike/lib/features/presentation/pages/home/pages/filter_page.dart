import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/dynamic_border_container.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/radio_list_tile_widget.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class FilterPage extends StatelessWidget {
  FilterPage({super.key});

  final ValueNotifier<bool> buttonColor = ValueNotifier(true);

  void _changeColor() {
    buttonColor.value = !buttonColor.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(
                Icons.close,
                size: 35,
                color: Colors.grey,
              ),
            ),
            title: const AppText(
              title: 'Фильтр',
              textType: TextType.body,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            centerTitle: true,
            actions: [
              TextButton(
                onPressed: () {},
                child: const AppText(
                  title: 'Очистить',
                  textType: TextType.body,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                      child: SearchBar(
                        shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        backgroundColor:
                            WidgetStateProperty.all(Colors.grey.shade300),
                        elevation: const WidgetStatePropertyAll(0.5),
                        leading: const Icon(Icons.search,
                            color: ColorConstants.grey),
                        hintText: 'Поиск',
                        hintStyle: const WidgetStatePropertyAll<TextStyle>(
                            TextStyle(color: ColorConstants.grey)),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const AppText(
                      title: 'Категория',
                      textType: TextType.subtitle,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 10),
                    const DynamicBorderContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'Выберите категорию',
                            textType: TextType.body,
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    const AppText(
                      title: 'Местоположение',
                      textType: TextType.subtitle,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 20),
                    const DynamicBorderContainer(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            title: 'Выберите местопложение',
                            textType: TextType.body,
                          ),
                          Icon(
                            Icons.chevron_right_rounded,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const AppText(
                          title: 'Цена',
                          textType: TextType.subtitle,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                        ValueListenableBuilder<bool>(
                          valueListenable: buttonColor,
                          builder: (BuildContext context, bool value,
                              Widget? child) {
                            return Row(
                              children: [
                                GestureDetector(
                                  onTap: _changeColor,
                                  child: DynamicBorderContainer(
                                    borderColor:
                                        value ? Colors.green : Colors.grey,
                                    borderWidth: value ? 2 : 0.5,
                                    width: 60,
                                    height: 30,
                                    child: AppText(
                                      title: 'KGS',
                                      textType: TextType.subtitle,
                                      color: value ? Colors.black : Colors.grey,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                GestureDetector(
                                  onTap: _changeColor,
                                  child: DynamicBorderContainer(
                                    borderColor:
                                        value ? Colors.grey : Colors.green,
                                    borderWidth: value ? 0.5 : 2,
                                    width: 60,
                                    height: 30,
                                    child: AppText(
                                      title: 'USD',
                                      textType: TextType.subtitle,
                                      color: value ? Colors.grey : Colors.black,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: [
                        Expanded(
                          child: DynamicBorderContainer(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: AppText(
                                title: 'От 0',
                                textType: TextType.body,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: DynamicBorderContainer(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: AppText(
                                title: 'До 85 672 70',
                                textType: TextType.body,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const AppText(
                      title: 'Сортировать',
                      textType: TextType.subtitle,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 12),
                child: RadioListTileWidget(),
              ),
            ],
          )),
        ],
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: BottomAppBar(
        child: DefElevatedButton(
          title: 'Показать (716 322)',
          width: 380,
          onPressed: () => context.router.push(
            const OnBoardingRoute(),
          ),
        ),
      ),
    );
  }
}

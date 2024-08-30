import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_circular_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';
import 'package:lalafolike/features/presentation/pages/profile/widget/profile_banner.dart';
import 'package:lalafolike/features/presentation/pages/profile/widget/vallet_card.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Scaffold(
            body: DefaultTabController(
              length: 3,
              child: NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      pinned: false,
                      leading: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: CustomCircularContainer(),
                      ),
                      title: Column(
                        children: [
                          const Align(
                            alignment: Alignment.topLeft,
                            child: AppText(
                              title: 'Nurzat Usenova',
                              textType: TextType.body,
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: AppText(
                              title: 'Редактировать профиль',
                              textType: TextType.promocode,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                            ),
                          ),
                        ],
                      ),
                      actions: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              CustomCircularContainer(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.edit,
                                    color: Theme.of(context).iconTheme.color),
                              ),
                              const SizedBox(width: 10),
                              CustomCircularContainer(
                                backgroundColor: Colors.white,
                                child: Icon(Icons.settings,
                                    color: Theme.of(context).iconTheme.color),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SliverAppBar(
                      pinned: false,
                      flexibleSpace: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: AppText(
                          title:
                              'Отвечает на 80% сообщений\nОбычно в течение дня',
                          textType: TextType.promocode,
                          color:
                              Theme.of(context).textTheme.displayLarge!.color,
                        ),
                      ),
                    ),
                    ///MARK: Banner
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: ProfileBanner(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 5),
                    ),
                    const SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: VallerCard(),
                      ),
                    ),
                    const SliverToBoxAdapter(
                      child: SizedBox(height: 5),
                    ),
                    SliverPersistentHeader(
                      pinned: true,
                      delegate: _SliverAppBarDelegate(
                        const TabBar(
                          tabs: [
                            Tab(text: 'Ожидают оплату'),
                            Tab(text: 'Активные'),
                            Tab(text: 'Неактивные'),
                          ],
                        ),
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  children: [
                    /// MARK: Ожидают оплату
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppText(
                              title: 'Нет объявлений',
                              textType: TextType.header,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .color,
                            ),
                            const AppText(
                              textAlign: TextAlign.center,
                              title:
                                  'Сдесь будут объявления, которые ожидает оплату',
                              textType: TextType.subtitle,
                            ),
                          ],
                        ),
                      ),
                    ),

                    /// MARK: Активный
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: const BoxDecoration(color: Colors.white),
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Center(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.photo_camera,
                                  size: 40,
                                  color: Colors.orange,
                                ),
                                const SizedBox(height: 15),
                                Center(
                                  child: AppText(
                                    textAlign: TextAlign.center,
                                    title:
                                        'Подайте объявление,\n совершите выгодную\n сделку!',
                                    textType: TextType.header,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .color,
                                  ),
                                ),
                                const SizedBox(height: 15),
                                CustomTextContainer(
                                  padding: const EdgeInsets.all(10),
                                  text: 'Подать объявление',
                                  fontWeight: FontWeight.w800,
                                  colorText: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .color,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  borderRadius: 26,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    /// MARK: Неактивный
                    Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const Center(
                        child: Text(
                          'Content for Tab 3',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverAppBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}

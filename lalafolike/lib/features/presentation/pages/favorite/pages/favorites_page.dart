import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/pages/favorite/mixins/favorite_page_mixin.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/product_card.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> with FavoritePageMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            title: const AppText(
              title: 'Избранное',
              textType: TextType.body,
              color: Colors.black,
            ),
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: showDeleteDialog,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AppText(
                    title: 'Удалить',
                    textType: TextType.body,
                    color: selectedIndex == 0 ? Colors.green : Colors.grey,
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              onTap: (index) => onTabSelected(index),
              dividerColor: Colors.transparent,
              indicatorColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.green,
              tabs: const [
                Tab(text: 'Объявления'),
                Tab(text: 'Поиски'),
              ],
            ),
          ),
        ],
        body: TabBarView(
          children: [
            CustomScrollView(
              slivers: [
                const SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 4.0,
                      children: products
                          .map((product) => ProductCard(product: product))
                          .toList(),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const AppText(
                    title: 'Подписок на поиск нет',
                    textType: TextType.header,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 10),
                  const AppText(
                    textAlign: TextAlign.center,
                    title: 'Подписывайтесь на обновления по \nвашему поиску',
                    textType: TextType.body,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 20),
                  DefElevatedButton(
                    title: 'На поиски!',
                    textType: TextType.body,
                    textColor: Colors.white,
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 100, vertical: 10),
                    onPressed: () {
                      context.pushRoute(const HomeRoute());
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

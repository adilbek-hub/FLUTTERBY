import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_widget_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/search_button.dart';
import 'package:lalafolike/features/presentation/pages/home/model/category.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/product_card.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class CategoryDetailPage extends StatefulWidget {
  const CategoryDetailPage({super.key, required this.category});
  final Category category;

  @override
  State<CategoryDetailPage> createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  int? selectedCategoryId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            forceMaterialTransparency: false,
            pinned: true,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 40,
                color: Colors.grey,
              ),
            ),
            title: SearchButton(
              width: 260,
              title: 'Поиск в ${widget.category.name}',
            ),
            centerTitle: true,
            actions: [
              GestureDetector(
                onTap: () => context.router.push(FilterRoute()),
                child: const AppText(
                  title: 'Фильтр',
                  textType: TextType.subtitle,
                  color: ColorConstants.green,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 15),
            sliver: SliverToBoxAdapter(
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  itemCount: widget.category.children!.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final childCategory = widget.category.children![index];
                    return CustomWidgetContainer(
                      onTap: () {
                        setState(() {
                          selectedCategoryId = childCategory.id;
                        });
                      },
                      color: selectedCategoryId == childCategory.id
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.surface,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            title: childCategory.name,
                            textType: TextType.subtitle,
                          ),
                          AppText(
                            title: childCategory.price.toString(),
                            textType: TextType.promocode,
                            color: ColorConstants.grey,
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 4.0,
                children: List.generate(
                  products
                      .where((product) =>
                          selectedCategoryId == null ||
                          product.categoryId == selectedCategoryId)
                      .length,
                  (context) {
                    final filteredProducts = products
                        .where((product) =>
                            selectedCategoryId == null ||
                            product.categoryId == selectedCategoryId)
                        .toList();
                    final product = filteredProducts[context];
                    return ProductCard(
                      product: product,
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

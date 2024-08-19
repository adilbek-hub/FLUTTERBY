import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/search_button.dart';
import 'package:lalafolike/features/presentation/pages/announsements/model/announsemmentmodel.dart';
import 'package:lalafolike/features/presentation/pages/announsements/widget/cardcategory_text.dart';
import 'package:lalafolike/router/router.dart';

@RoutePage()
class AnnounSementsSubCategoryPage extends StatelessWidget {
  final String subCategoryName;
  final List<ChildrenAnnounsement> subcategory;

  const AnnounSementsSubCategoryPage({
    super.key,
    required this.subCategoryName,
    required this.subcategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            forceMaterialTransparency: false,
            pinned: true,
            leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 35,
                color: Colors.grey,
              ),
            ),
            title: const AppText(
              title: 'Подкатегория',
              textType: TextType.body,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            centerTitle: true,
          ),
          const SliverAppBar(
            toolbarHeight: 0,
            pinned: true,
            flexibleSpace: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: SearchButton(
                width: 100,
                title: 'Поиск по категориям',
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: AppText(
                title: 'Выберите категорию',
                textType: TextType.header,
                color: Colors.black,
              ),
            ),
          ),
          SliverList.builder(
            itemCount: subcategory.length,
            itemBuilder: (context, index) {
              final child = subcategory[index];
              return Padding(
                padding: const EdgeInsets.only(left: 12, top: 10, bottom: 10),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: child.children != null
                          ? () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      AnnounSementsSubCategoryPage(
                                          subCategoryName: child.name,
                                          subcategory: child.children!),
                                ),
                              )
                          : () => context.router.push(
                                PriceRoute(sunCategoryName: child.name),
                              ),
                      child: Row(
                        children: [
                          AppText(
                            title: child.name,
                            textType: TextType.subtitle,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.grey, thickness: 0.5),
                  ],
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey, width: 0.2),
        ),
        child: CardCategoryText(subCategoryName: subCategoryName),
      ),
    );
  }
}

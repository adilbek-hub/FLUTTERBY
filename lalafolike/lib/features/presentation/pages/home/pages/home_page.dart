import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/banner.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/categories.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/featured_new_choose_button.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/flat_rent.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/product_card.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/search_filter.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/see_all_categories_text_button.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isRecommendedSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const SearchFilter(),
                  const SizedBox(height: 28),
                  const SeeAllCategoriesTextButton(),
                  const SizedBox(height: 20),
                  const Categories(),
                  const SizedBox(height: 20),
                  const Banners(),
                  const SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: AppText(
                      title: 'Аренда квартир',
                      textType: TextType.header,
                      color: Theme.of(context).textTheme.displayMedium!.color,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const FlatRent(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: FeaturedNewChooseButton(
                onSelectionChanged: (isRecommendedSelected) {
                  setState(() {
                    _isRecommendedSelected = isRecommendedSelected;
                  });
                },
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('recommendedProducts')
                        .snapshots(),
                    builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      }
                      if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                        return const Center(child: Text('No data available'));
                      }
                      final recommendedProduct = snapshot.data!.docs;
                      return StaggeredGrid.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 4.0,
                        children: (_isRecommendedSelected
                                ? recommendedProduct
                                : recommendedProduct)
                            .map(
                              (product) => InkWell(
                                onTap: () {},
                                child: ProductCard(
                                  image: product['image'],
                                  price: product['price'],
                                  discountPrice: product['discountPrice'],
                                  vacation: product['vacation'],
                                  description: product['description'],
                                ),
                              ),
                            )
                            .toList(),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FireStoreDataBase {
  String? downloadURL;
  Future getData() async {
    try {
      await downloadUrlExample();
      return downloadURL;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  Future<void> downloadUrlExample() async {
    downloadURL = await FirebaseStorage.instance
        .ref()
        .child('Flutter.png')
        .getDownloadURL();
    debugPrint(downloadURL.toString());
  }
}

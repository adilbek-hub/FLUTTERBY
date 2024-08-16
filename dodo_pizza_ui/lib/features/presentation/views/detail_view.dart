import 'package:dodo_pizza_ui/features/data/models/type_of_pizza.dart';
import 'package:flutter/material.dart';
import '../../../components/detail_components/basket_button.dart';
import '../../../components/detail_components/card_traditional.dart';
import '../../../components/detail_components/navigator_pop.dart';
import '../../../components/detail_components/product_description.dart';
import '../../../components/detail_components/product_image.dart';
import '../../../components/detail_components/product_ingredient.dart';
import '../../../components/detail_components/product_name.dart';
import '../../../components/detail_components/product_small_size.dart';
import '../../../components/detail_components/taste_aad_class.dart';
import '../../../components/detail_components/testy_add_view.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.profitableTasty});
  final TypeOfPizza profitableTasty;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  int selectedIndex = 0;
  final List<String> options = ['Маленькая', 'Средняя', 'Большая'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 243, 239, 239),
        body: Stack(children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ProductImage(widget: widget),
                  ProductName(widget: widget),
                  ProductSmallSize(widget: widget),
                  const SizedBox(height: 12),
                  ProductDescription(widget: widget),
                  const SizedBox(height: 12),
                  ProductIngredient(widget: widget),
                  const SizedBox(height: 12),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 220, 219, 219),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        options.length,
                        (index) => GestureDetector(
                          onTap: () => setState(() => selectedIndex = index),
                          child: Container(
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(
                                10,
                              ),
                            ),
                            child: Text(options[index]),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const CardTraditional(),
                  const SizedBox(height: 20),
                  const TasteAddClass(),
                  const SizedBox(height: 20),
                  GridView.count(
                    crossAxisCount: 3,
                    crossAxisSpacing: 2.0,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 150 / 220,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: List.generate(
                        widget.profitableTasty.smallPizza.suplements.image
                            .length, (index) {
                      final suplementName = widget
                          .profitableTasty.smallPizza.suplements.name[index];
                      final suplementImage = widget
                          .profitableTasty.smallPizza.suplements.image[index];
                      final suplementPrice = widget
                          .profitableTasty.smallPizza.suplements.price[index];
                      return TestyAddViews(
                        suplementImage: suplementImage,
                        suplementName: suplementName,
                        suplementPrice: suplementPrice,
                      );
                    }),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
          const NavigatorPop(),
        ]),
        bottomNavigationBar: const BasketButton(),
      ),
    );
  }
}

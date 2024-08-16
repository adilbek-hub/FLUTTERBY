import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/kgsusd_currency_button.dart';
import 'package:like_lalafo/features/presentation/pages/announsements/widget/price_field.dart';
import 'package:like_lalafo/router/router.dart';

@RoutePage()
class PricePage extends StatefulWidget {
  const PricePage({super.key, required this.sunCategoryName});
  final String sunCategoryName;

  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  final ValueNotifier<bool> _isRecommendedSelected = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _isAmountEntered = ValueNotifier<bool>(false);
  final TextEditingController _priceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _priceController.addListener(() {
      _isAmountEntered.value = _priceController.text.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            leading: IconButton(
              onPressed: () {
                context.router.pop();
              },
              icon: const Icon(
                Icons.chevron_left,
                size: 36,
                color: Colors.grey,
              ),
            ),
            title: const AppText(
              title: 'Цена',
              textType: TextType.body,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            actions: const [
              AppText(
                title: 'Пропустить',
                textType: TextType.body,
                color: Colors.green,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(width: 12),
            ],
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'Цена',
                    textType: TextType.header,
                    color: getThemeModeColor.brighnessTheme(context),
                  ),
                  PriceField(
                    controller: _priceController,
                  ),
                  const SizedBox(height: 20),
                  KGSUSDCurrencyButton(
                    isRecommendedSelected: _isRecommendedSelected,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(color: Colors.grey, width: 0.2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: AppText(
                      title: widget.sunCategoryName,
                      textType: TextType.promocode,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
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
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () =>
                        context.router.push(const AnnounsementviewRoute()),
                    child: ValueListenableBuilder<bool>(
                      valueListenable: _isAmountEntered,
                      builder: (context, isAmountEntered, child) {
                        return Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.90,
                          decoration: BoxDecoration(
                            color: isAmountEntered ? Colors.green : null,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(
                              color: Colors.green,
                            ),
                          ),
                          child: Center(
                            child: Text(
                              isAmountEntered ? 'Далее' : 'Пропустить',
                              style: TextStyle(
                                fontSize: 15,
                                color: isAmountEntered
                                    ? Colors.white
                                    : Colors.green,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _priceController.dispose();
    _isRecommendedSelected.dispose();
    _isAmountEntered.dispose();
    super.dispose();
  }
}

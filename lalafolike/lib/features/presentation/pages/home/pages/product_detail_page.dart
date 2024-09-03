import 'package:auto_route/auto_route.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/circular_image.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/product_card.dart';

@RoutePage()
class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key, required this.productModel});
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        body: CustomScrollView(
          slivers: [
            const SliverAppBar(
              backgroundColor: Colors.white,
              leading: Icon(
                Icons.chevron_left,
                size: 35,
                color: Color.fromARGB(255, 158, 158, 158),
              ),
              actions: [
                Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.share,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.more_vert,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
                SizedBox(width: 15),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Image.asset(productModel.imageUrl ?? ''),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AppText(
                              title: 'Показы: 7 048',
                              textType: TextType.promocode,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                            ),
                            const Spacer(),
                            const Icon(Icons.visibility),
                            const SizedBox(width: 5),
                            AppText(
                              title: '207',
                              textType: TextType.promocode,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                            ),
                            const SizedBox(width: 5),
                            const Icon(Icons.favorite),
                            const SizedBox(width: 5),
                            AppText(
                              title: '4',
                              textType: TextType.promocode,
                              color: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .color,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        AppText(
                          title: '${productModel.price} KGS',
                          textType: TextType.bigheader,
                          color:
                              Theme.of(context).textTheme.displayMedium!.color,
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: CustomTextContainer(
                                text: 'Написать',
                                colorText:
                                    Theme.of(context).colorScheme.primary,
                                color: Colors.transparent,
                                borderRadius: 22,
                                borderColor:
                                    Theme.of(context).colorScheme.primary,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Expanded(
                              child: CustomTextContainer(
                                text: 'Позвонить',
                                colorText: Colors.white,
                                color: ColorConstants.red,
                                borderRadius: 22,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          children: [
                            AppText(
                                title: 'Доставка:',
                                textType: TextType.promocode,
                                color: Colors.black),
                            AppText(
                                title: 'Самовывоз',
                                textType: TextType.promocode,
                                color: Colors.black),
                          ],
                        ),
                        const ExpandableText(
                          'Детский электрический тример ножницы для ногтей - это незаменимое устройство для маленких детей и новородженных. Он представляет собой комплект, включающтй в себе электрические ножницы пилки и три насадки, которые позволяет осуществлять маникюр и педикюр у детей люього возраста и взрослых. Ножницы обладают высокими прочностными свойствами, что делает их надежными и выгодными. ',
                          expandText: 'Показать полностью',
                          collapseText: 'Скрыть',
                          maxLines: 7,
                          linkColor: Colors.grey,
                          style: TextStyle(color: Colors.black),
                        ),
                        const SizedBox(height: 20),
                        DefElevatedButton(
                          height: 45,
                          title: 'Добавить в Избранное',
                          textColor: Colors.white,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                  const Divider(
                    height: 0.0,
                    thickness: 0.5,
                    color: Color.fromARGB(255, 209, 208, 208),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircularImage(
                                imageUrl: AssetConstants.cat.jpg, radius: 23),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      AppText(
                                        title: 'Jan Mo',
                                        textType: TextType.body,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .color,
                                      ),
                                      const SizedBox(width: 10),
                                      const ProContainer(),
                                    ],
                                  ),
                                  AppText(
                                    title:
                                        'Был(а) в сети 02.09.2024\nОтвечает на 93% сообщений\nОбычно в течение 35 мин.',
                                    textType: TextType.promocode,
                                    color: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .color,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        DefElevatedButton(
                          height: 45,
                          borderColor: Colors.green,
                          borderWidth: 1,
                          backgroundColor: Colors.white,
                          title: 'Все объявления продавца',
                          textColor: Colors.green,
                          onPressed: () {},
                        ),
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200],
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.phone),
                                    AppText(
                                      title: '+996 999 999 999',
                                      color: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .color,
                                      textType: TextType.body,
                                    ),
                                    const Icon(Icons.telegram,
                                        color: Colors.blue),
                                    const Icon(Icons.message,
                                        color: Colors.green),
                                  ],
                                ),
                              ),
                              AppText(
                                title: '+996',
                                textType: TextType.body,
                                color: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .color,
                              ),
                              const AppText(
                                title: 'Позвонить',
                                textType: TextType.body,
                                color: Colors.green,
                              ),
                              const SizedBox(height: 20),
                              const Divider(
                                height: 0.0,
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.accessibility_new_outlined,
                                  ),
                                  SizedBox(width: 10),
                                  AppText(
                                    title: 'Написать в Whatsapp',
                                    textType: TextType.body,
                                    color: Colors.grey,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
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

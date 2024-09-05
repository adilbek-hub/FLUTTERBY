import 'package:auto_route/auto_route.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/circular_image.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_field.dart';
import 'package:lalafolike/features/presentation/basic_widgets/def_elevated_button.dart';
import 'package:lalafolike/features/presentation/enams/assets_constants.dart';
import 'package:lalafolike/features/presentation/pages/chat/data/chat_service.dart';
import 'package:lalafolike/features/presentation/pages/home/model/products.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/banner.dart';
import 'package:lalafolike/features/presentation/pages/home/widget/product_card.dart';
import 'package:lalafolike/router/router.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key, required this.productModel});
  final ProductsFromFirbase productModel;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final ChatService _chatService = ChatService();
  final TextEditingController _messageController = TextEditingController();

  void _sendMessage() {
    if (_messageController.text.trim().isNotEmpty) {
      _chatService.sendMessage(_messageController.text.trim());
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstants.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.white,
              leading: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.chevron_left,
                  size: 35,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
              ),
              actions: [
                const Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () async {
                    final result = await Share.share(
                        'https://pub.dev/packages/share_plus');

                    if (result.status == ShareResultStatus.success) {
                      print('Thank you for sharing my website!');
                    }
                  },
                  child: const Icon(
                    Icons.share,
                    color: Color.fromARGB(255, 158, 158, 158),
                  ),
                ),
                const SizedBox(width: 15),
                const Icon(
                  Icons.more_vert,
                  color: Color.fromARGB(255, 158, 158, 158),
                ),
                const SizedBox(width: 15),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Image.asset(widget.productModel.imageUrl ?? ''),
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
                          title: '${widget.productModel.price} KGS',
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
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
                                const SizedBox(height: 10),
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Divider(
                          height: 0.0,
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            title: 'Обновлено: 03.09.2024',
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                            textType: TextType.body,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            title: 'Создано: 01.09.2024',
                            textType: TextType.body,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: AppText(
                            title: 'ID: 84286450',
                            textType: TextType.body,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Divider(
                          height: 0.0,
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 20),
                        DefElevatedButton(
                          height: 45,
                          borderColor: Colors.green,
                          borderWidth: 1,
                          backgroundColor: Colors.white,
                          title: 'Поделиться с друзьями',
                          textColor: Colors.green,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Banners(),
                  const SizedBox(height: 30),
                  const AppText(
                    title: 'Другие объявления "Покупанда"',
                    textType: TextType.header,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 30),
                  /*
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: StaggeredGrid.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 4.0,
                      children: products
                          .map(
                            (product) => InkWell(
                              onTap: () {
                                context.router.push(
                                  ProductDetailRoute(productModel: product),
                                );
                              },
                              child: ProductCard(product: product),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                  */
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SingleChildScrollView(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 1),
                      color: Colors.black.withOpacity(0.1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 30,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const CustomTextContainer(
                              text: 'Hello, Flutter!',
                              borderRadius: 15.0,
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Divider(color: Colors.grey),
                      Row(
                        children: [
                          const CustomTextContainer(
                            color: Colors.red,
                            colorText: Colors.white,
                            text: 'Позвонить',
                          ),
                          Expanded(
                            child: CustomTextField(
                              controller: _messageController,
                              hintText: 'Сообщение...',
                              borderColor: ColorConstants.lightConatinerColor,
                              borderRadius: 15.0,
                              borderWidth: 2.0,
                              backgroundColor:
                                  ColorConstants.lightConatinerColor,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 15.0),
                              textStyle: const TextStyle(color: Colors.blue),
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: _sendMessage,
                            child: const CircleAvatar(
                              backgroundColor: Colors.grey,
                              child:
                                  Icon(Icons.arrow_upward, color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

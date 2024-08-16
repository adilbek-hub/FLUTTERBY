import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/core/theme/get_theme_mode_color.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';
import 'package:like_lalafo/features/presentation/pages/chat/widget/chat_list_view.dart';
import 'package:like_lalafo/features/presentation/pages/chat/widget/notification_menu_text.dart';
import 'package:like_lalafo/features/presentation/pages/chat/widget/outlined_tap.dart';
import 'package:like_lalafo/features/presentation/pages/home/model/products.dart';

@RoutePage()
class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: getThemeModeColor.brightnessColor(
            context,
            lightColor: Colors.white,
            darkColor: ColorConstants.darkbgcolor,
          ),
          child: NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  forceMaterialTransparency: true,
                  floating: true,
                  expandedHeight: 50.0,
                  forceElevated: innerBoxIsScrolled,
                  title: const AppText(title: 'Чаты', textType: TextType.body),
                  centerTitle: true,
                  actions: const [
                    NotificationMenuText(),
                  ],
                ),
              ];
            },
            body: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      OutlinedTap(
                        text: 'Все',
                      ),
                      SizedBox(width: 10),
                      OutlinedTap(text: 'По дате'),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];
                      return ChatListView(product: product);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

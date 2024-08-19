import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lalafolike/core/theme/color_constants.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/search_button.dart';
import 'package:lalafolike/features/presentation/pages/search/search_page.dart';
import 'package:lalafolike/router/router.dart';

class SearchFilter extends StatelessWidget {
  const SearchFilter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchButton(
            onTap: () async {
              await showSearch(
                context: context,
                delegate: SearchAlbum(),
                useRootNavigator: true,
              );
            },
          ),
          GestureDetector(
            onTap: () => context.router.push(FilterRoute()),
            child: const AppText(
              title: 'Фильтр',
              textType: TextType.subtitle,
              color: ColorConstants.green,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:like_lalafo/features/presentation/pages/favorite/widget/def_show_dialog.dart';

mixin FavoritePageMixin<T extends StatefulWidget> on State<T> {
  int selectedIndex = 0;

  void onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void showDeleteDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const CustomDialog();
      },
    );
  }
}

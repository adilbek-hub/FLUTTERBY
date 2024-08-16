import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/pages/announsements/model/announsemmentmodel.dart';

class AnnounSementCatgoryView extends StatelessWidget {
  const AnnounSementCatgoryView(
      {super.key, this.categoryannounsement, this.onTap});

  final CategoryAnnounsement? categoryannounsement;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, top: 10, bottom: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Row(
              children: [
                AppText(
                  title: categoryannounsement!.name,
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
  }
}

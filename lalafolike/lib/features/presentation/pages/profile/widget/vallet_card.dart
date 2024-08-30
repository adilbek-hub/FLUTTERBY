import 'package:flutter/material.dart';
import 'package:lalafolike/features/presentation/apptext/app_text.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_card.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_circular_container.dart';
import 'package:lalafolike/features/presentation/basic_widgets/custom_text_container.dart';

class VallerCard extends StatelessWidget {
  const VallerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      content: Column(
        children: [
          Row(
            children: [
              CustomCircularContainer(
                backgroundColor: Theme.of(context).colorScheme.surface,
                child: const Icon(Icons.equalizer),
              ),
              const SizedBox(
                width: 20,
              ),
              AppText(
                title: 'Эффективность',
                textType: TextType.body,
                color: Theme.of(context).textTheme.displayMedium!.color,
              ),
              const Spacer(),
              const Icon(Icons.chevron_right),
            ],
          ),
          const Divider(
            indent: 80,
            color: Colors.grey,
          ),
          Row(
            children: [
              CustomCircularContainer(
                backgroundColor: Theme.of(context).colorScheme.surface,
                child: const Icon(Icons.equalizer),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    title: 'Кошелек',
                    textType: TextType.body,
                    color: Theme.of(context).textTheme.displayMedium!.color,
                  ),
                  const AppText(
                    color: Colors.grey,
                    title: '12.04 KGS',
                    textType: TextType.promocode,
                  ),
                ],
              ),
              const Spacer(),
              const CustomTextContainer(
                text: 'Пополнить',
                colorText: Colors.white,
                color: Colors.green,
                borderRadius: 20,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

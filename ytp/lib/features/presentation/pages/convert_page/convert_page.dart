import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ytp/features/presentation/pages/convert_page/convert_card.dart';
import 'package:ytp/features/presentation/pages/convert_page/widgets/fix_circular_button.dart';

@RoutePage()
class ConvertPage extends StatelessWidget {
  const ConvertPage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    final List<String> moneys = ['Mex', 'JPY', 'USD', 'EUR'];
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Text(
                    'Convert',
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(height: 20),
                  ConvertCard(theme: theme, moneys: moneys),
                  const SizedBox(height: 15),
                  FixCircularButton(theme: theme),
                  const SizedBox(height: 15),
                  ConvertCard(theme: theme, moneys: moneys),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

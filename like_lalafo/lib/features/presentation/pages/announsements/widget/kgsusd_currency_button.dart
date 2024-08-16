import 'package:flutter/material.dart';
import 'package:like_lalafo/core/theme/color_constants.dart';
import 'package:like_lalafo/features/presentation/apptext/app_text.dart';

class KGSUSDCurrencyButton extends StatelessWidget {
  const KGSUSDCurrencyButton({
    super.key,
    required ValueNotifier<bool> isRecommendedSelected,
  }) : _isRecommendedSelected = isRecommendedSelected;

  final ValueNotifier<bool> _isRecommendedSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: 38,
      decoration: BoxDecoration(
        border: Border.all(
          color: ColorConstants.green,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(18)),
      ),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                _isRecommendedSelected.value = true;
              },
              child: ValueListenableBuilder<bool>(
                valueListenable: _isRecommendedSelected,
                builder: (context, value, child) {
                  return Container(
                    decoration: BoxDecoration(
                      color: value ? Colors.green : Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(18),
                          bottomLeft: Radius.circular(18)),
                    ),
                    alignment: Alignment.center,
                    child: AppText(
                      title: 'KGS',
                      color: value ? Colors.white : Colors.green,
                      textType: TextType.subtitle,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                _isRecommendedSelected.value = false;
              },
              child: ValueListenableBuilder<bool>(
                valueListenable: _isRecommendedSelected,
                builder: (context, value, child) {
                  return Container(
                    decoration: BoxDecoration(
                      color: !value ? Colors.green : Colors.white,
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(18),
                          bottomRight: Radius.circular(18)),
                    ),
                    alignment: Alignment.center,
                    child: AppText(
                      title: 'USD',
                      color: value ? Colors.green : Colors.white,
                      textType: TextType.subtitle,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel_app/components/booking_components/some_result_widget.dart';
import '../../constants/app_colors.dart';

class SumResultContainer extends StatelessWidget {
  const SumResultContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SumResultsWidget(),
          ],
        ),
      ),
    );
  }
}

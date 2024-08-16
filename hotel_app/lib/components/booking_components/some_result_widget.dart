import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/constants/constants_export.dart';
import '../../bloc/hotel_bloc.dart';

class SumResultsWidget extends StatelessWidget {
  const SumResultsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          final tourPrice = state.bookingModel.tourPrice;
          final fuelCharge = state.bookingModel.fuelCharge;
          final serviceCharge = state.bookingModel.serviceCharge;
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppTexts.top,
                    style: AppTextStyles.tStyle4,
                  ),
                  Text(
                    '${state.bookingModel.tourPrice} ${AppTexts.rubley} ',
                    style: AppTextStyles.bookingStyle,
                  ),
                ],
              ),
              AppSize.height16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(AppTexts.toplivnySbor,
                      style: AppTextStyles.tStyle4),
                  Text('${state.bookingModel.fuelCharge} ${AppTexts.rubley}',
                      style: AppTextStyles.bookingStyle),
                ],
              ),
              AppSize.height16,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppTexts.servisnySbor,
                    style: AppTextStyles.tStyle4,
                  ),
                  Text(
                    '${state.bookingModel.serviceCharge} ${AppTexts.rubley}',
                    style: AppTextStyles.bookingStyle,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    AppTexts.kOplate,
                    style: AppTextStyles.tStyle4,
                  ),
                  Text(
                    '${tourPrice + fuelCharge + serviceCharge}',
                    style: AppTextStyles.tStyle5,
                  ),
                ],
              ),
              AppSize.height16,
            ],
          );
        } else {
          throw (AppTexts.error);
        }
      },
    );
  }
}

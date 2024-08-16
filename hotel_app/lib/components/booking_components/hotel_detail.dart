import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/constants/constants_export.dart';
import '../../bloc/hotel_bloc.dart';

class HotelDetails extends StatelessWidget {
  const HotelDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelBloc, HotelState>(
      builder: (context, state) {
        if (state is HotelSuccess) {
          return Table(children: [
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  AppTexts.vyletIz,
                  style: AppTextStyles.tStyle4,
                ),
              ),
              Text(
                state.bookingModel.departure,
                style: AppTextStyles.bookingStyle,
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  AppTexts.countryCity,
                  style: AppTextStyles.tStyle4,
                ),
              ),
              Text(
                state.bookingModel.arrivalCountry,
                style: AppTextStyles.bookingStyle,
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  AppTexts.dates,
                  style: AppTextStyles.tStyle4,
                ),
              ),
              Text(
                '${state.bookingModel.tourDateStart} - ${state.bookingModel.tourDateStop}',
                style: AppTextStyles.bookingStyle,
              ),
            ]),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  AppTexts.kolichestvoNochey,
                  style: AppTextStyles.tStyle4,
                ),
              ),
              Text(
                '${state.bookingModel.numberOfNights} ${AppTexts.nochey}',
                style: AppTextStyles.bookingStyle,
              ),
            ]),
            const TableRow(children: [
              Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  AppTexts.hotel,
                  style: AppTextStyles.tStyle4,
                ),
              ),
              Text(
                AppTexts.steigenbergerMakadi,
                style: AppTextStyles.bookingStyle,
              ),
            ]),
            TableRow(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Text(
                    AppTexts.numer,
                    style: AppTextStyles.tStyle4,
                  ),
                ),
                Text(
                  state.bookingModel.room,
                  style: AppTextStyles.bookingStyle,
                ),
              ],
            ),
            TableRow(children: [
              const Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Text(
                  AppTexts.pitanie,
                  style: AppTextStyles.tStyle4,
                ),
              ),
              Text(
                state.bookingModel.nutrition,
                style: AppTextStyles.bookingStyle,
              ),
            ]),
          ]);
        } else {
          throw (AppTexts.error);
        }
      },
    );
  }
}

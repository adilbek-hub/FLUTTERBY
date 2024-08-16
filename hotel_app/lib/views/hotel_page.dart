import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_app/constants/app_texts.dart';
import '../bloc/hotel_bloc.dart';
import '../components/hotel_components/loading_widget.dart';
import '../components/hotel_components/success_widget.dart';
import 'package:hotel_app/constants/constants_export.dart';

class HotelView extends StatefulWidget {
  const HotelView({super.key});

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF6F6F9),
        body: BlocBuilder<HotelBloc, HotelState>(
          builder: (context, state) {
            if (state is HotelLoading) {
              return const LoadingWidget();
            } else if (state is HotelSuccess) {
              return const SuccessWidget();
            } else if (state is HotelError) {
              return ErrorWidget(state.text);
            } else {
              return const Text(AppTexts.error);
            }
          },
        ),
      ),
    );
  }
}

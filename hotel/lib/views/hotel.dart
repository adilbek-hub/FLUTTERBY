import 'package:flutter/material.dart';

import '../constants/app_text_styles.dart';

class HotelView extends StatefulWidget {
  const HotelView({super.key});

  @override
  State<HotelView> createState() => _HotelViewState();
}

class _HotelViewState extends State<HotelView> {
  // final height = MediaQuery.of(context).size.height;
  // final width = MediaQuery.of(context).size.width;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Text(
                'Отель',
                style: AppTextStyles.hotelStyle,
              ),
              Container(
                height: 343,
                width: 257,
                child: Image.asset(
                  'assets/hotelImage.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

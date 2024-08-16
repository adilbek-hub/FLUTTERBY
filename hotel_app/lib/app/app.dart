import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/hotel_bloc.dart';
import '../service/booking_service.dart';
import '../service/hotel_number_service.dart';
import '../service/hotel_service.dart';
import '../views/booking_page.dart';
import '../views/hotel_number_page.dart';
import '../views/hotel_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HotelBloc(
        service: hotelService,
        hotelNumberService: hotelNumberService,
        bookingService: bookingService,
      )..add(HotelRefreshEvent()),
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => const HotelView(),
          'HotelNumber': (context) => const HotelNumber(),
          'BookingPage': (context) => const BookingPage(),
        },
      ),
    );
  }
}

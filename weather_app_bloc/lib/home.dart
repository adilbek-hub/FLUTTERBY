import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_bloc/cubit/weather_cubit.dart';

import 'servises/fetch_weather.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          WeatherCubit(weatherService)..getWeatherByCityName('Moscow'),
      child: Scaffold(
        appBar: AppBar(title: const Text('HomePage')),
        body: Center(
          child: BlocBuilder<WeatherCubit, WeatherState>(
            builder: (context, state) {
              if (state is WeatherInitial) {
                return const Text('WeatherInitial');
              } else if (state is WeatherLoading) {
                return const CircularProgressIndicator();
              } else if (state is WeatherSuccess) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('${state.weatherResponce.weather[0].id}'),
                      Text(state.weatherResponce.weather[0].icon),
                      Text(state.weatherResponce.weather[0].description),
                      Text(state.weatherResponce.name),
                    ],
                  ),
                );
              } else if (state is WeatherError) {
                return Text('Weather error');
              } else {
                return Text('Bilbeym');
              }
            },
          ),
        ),
      ),
    );
  }
}

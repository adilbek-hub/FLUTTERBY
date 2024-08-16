import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:weather_app_bloc/model/weather_response.dart';
import 'package:weather_app_bloc/servises/fetch_weather.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit(
    this.service,
  ) : super(WeatherInitial());

  final WeatherService service;

  Future<void> getWeatherByCityName(String cityName) async {
    emit(WeatherLoading());
    final data = await service.getWeatherByCityName(cityName);
    if (data != null) {
      emit(
        WeatherSuccess(data),
      );
    } else {
      emit(const WeatherError(errorText: 'Bir kata boldy'));
    }
  }
}

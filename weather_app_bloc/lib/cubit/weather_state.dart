part of 'weather_cubit.dart';

sealed class WeatherState extends Equatable {
  const WeatherState();

  @override
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoading extends WeatherState {}

class WeatherSuccess extends WeatherState {
  const WeatherSuccess(this.weatherResponce);
  final WeatherResponce weatherResponce;
}

class WeatherError extends WeatherState {
  const WeatherError({required this.errorText});
  final String errorText;
}

import 'package:weather_app_deneme/model/weather_model.dart';

class WeaterState {}

class InitialWeatherState extends WeaterState {}

class WeatherLoadedState extends WeaterState {
  final List<WeatherModel> weatherModel;

  WeatherLoadedState({required this.weatherModel});
}

class WeatherFuliureState extends WeaterState {}

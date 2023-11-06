import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_deneme/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app_deneme/model/weather_model.dart';
import 'package:weather_app_deneme/services/weather_services.dart';

class GetWeatherCubit extends Cubit<WeaterState> {
  GetWeatherCubit() : super(InitialWeatherState());
//List<WeatherModel> weatherModel;
  getWeather({required String cityName}) async {
    try {
      List<WeatherModel> weatherModel =
          await WeatherServices(Dio()).getWeatherCurrent(cityName: cityName);

      emit(WeatherLoadedState(weatherModel: weatherModel));
    } catch (e) {
      emit(WeatherFuliureState());
    }
  }
}

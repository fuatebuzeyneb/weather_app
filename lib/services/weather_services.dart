import 'package:dio/dio.dart';
import 'package:weather_app_deneme/model/weather_model.dart';

class WeatherServices {
  final Dio dio;

  WeatherServices(this.dio);

  Future<List<WeatherModel>> getWeatherCurrent(
      {required String cityName}) async {
    Response response = await dio.get(
        'https://api.weatherapi.com/v1/forecast.json?key=916489f99dbf4638a7384406232910&q=$cityName&days=10');

    Map<String, dynamic> jsonData = response.data['forecast'];
    List<dynamic> weathers = jsonData['forecastday'];
    List<WeatherModel> weathersList = [];
    int a = 0;
    for (var element in weathers) {
      WeatherModel weatherModel = WeatherModel.fromJson(weathers, a);
      weathersList.add(weatherModel);
      a++;
    }
    return weathersList;
  }
}

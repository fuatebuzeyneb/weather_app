import 'package:flutter/material.dart';

import 'package:weather_app_deneme/model/weather_model.dart';

class WeatherCardWidget extends StatelessWidget {
  const WeatherCardWidget({
    super.key,
    required this.weatherModel,
  });
  final WeatherModel weatherModel;

  @override
  Widget build(BuildContext context) {
    //var weatherModel = BlocProvider.of<GetWeatherCubit>(context).wetherModel;
    return Container(
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            getWeatherColor(weatherModel.conditionText),
            getWeatherColor(weatherModel.conditionText).shade300,
            getWeatherColor(weatherModel.conditionText).shade50,
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(
                height: 5,
              ),
              Text(
                '${weatherModel.avgTemp}°',
                style:
                    const TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    'H: ${weatherModel.maxTemp}°',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'L: ${weatherModel.minTemp}°',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              Text(
                weatherModel.date,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.network(
                'http:${weatherModel.image}' ??
                    'http://cdn.weatherapi.com/weather/64x64/day/113.png',
                height: 100,
                width: 150,
                fit: BoxFit.cover,
              ),
              Text(weatherModel.conditionText,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) {
    return Colors.red;
  }

  switch (condition) {
    case "Sunny":
      return Colors.yellow;
    case "Partly cloudy":
      return Colors.lightGreen;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.grey;
    case "Mist":
      return Colors.grey;
    case "Patchy rain possible":
      return Colors.blue;
    case "Patchy snow possible":
      return Colors.blueGrey;
    case "Patchy sleet possible":
      return Colors.blueGrey;
    case "Patchy freezing drizzle possible":
      return Colors.blueGrey;
    case "Thundery outbreaks possible":
      return Colors.deepPurple;
    case "Blowing snow":
      return Colors.blueGrey;
    case "Blizzard":
      return Colors.blueGrey;
    case "Fog":
      return Colors.grey;
    case "Freezing fog":
      return Colors.grey;
    case "Patchy light drizzle":
      return Colors.lightBlue;
    case "Light drizzle":
      return Colors.lightBlue;
    case "Freezing drizzle":
      return Colors.lightBlue;
    case "Heavy freezing drizzle":
      return Colors.lightBlue;
    case "Patchy light rain":
      return Colors.lightBlue;
    case "Light rain":
      return Colors.lightBlue;
    case "Moderate rain at times":
      return Colors.lightBlue;
    case "Moderate rain":
      return Colors.lightBlue;
    case "Heavy rain at times":
      return Colors.lightBlue;
    case "Heavy rain":
      return Colors.lightBlue;
    case "Light freezing rain":
      return Colors.lightBlue;
    case "Moderate or heavy freezing rain":
      return Colors.lightBlue;
    case "Light sleet":
      return Colors.blueGrey;
    case "Moderate or heavy sleet":
      return Colors.blueGrey;
    case "Patchy light snow":
      return Colors.blueGrey;
    case "Light snow":
      return Colors.blueGrey;
    case "Patchy moderate snow":
      return Colors.blueGrey;
    case "Moderate snow":
      return Colors.blueGrey;
    case "Patchy heavy snow":
      return Colors.blueGrey;
    case "Heavy snow":
      return Colors.blueGrey;
    case "Ice pellets":
      return Colors.blueGrey;
    case "Light rain shower":
      return Colors.lightBlue;
    case "Moderate or heavy rain shower":
      return Colors.lightBlue;
    case "Torrential rain shower":
      return Colors.lightBlue;
    case "Light sleet showers":
      return Colors.blueGrey;
    case "Moderate or heavy sleet showers":
      return Colors.blueGrey;
    case "Light snow showers":
      return Colors.blueGrey;
    case "Moderate or heavy snow showers":
      return Colors.blueGrey;
    case "Light showers of ice pellets":
      return Colors.blueGrey;
    case "Moderate or heavy showers of ice pellets":
      return Colors.blueGrey;
    case "Patchy light rain with thunder":
      return Colors.amber;
    case "Moderate or heavy rain with thunder":
      return Colors.amber;
    case "Patchy light snow with thunder":
      return Colors.deepPurple;
    case "Moderate or heavy snow with thunder":
      return Colors.deepPurple;
    default:
      return Colors.grey;
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app_deneme/model/weather_model.dart';
import 'package:weather_app_deneme/widget/weather_card_widget.dart';

class WeatherListWidget extends StatelessWidget {
  const WeatherListWidget({
    super.key,
    required this.weatherModel,
  });
  final List<WeatherModel> weatherModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: weatherModel.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: WeatherCardWidget(
            weatherModel: weatherModel[index],
          ),
        );
      },
    );
  }
}

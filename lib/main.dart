import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_deneme/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app_deneme/view/home_view.dart';

void main() {
  //WeatherServices(Dio()).getWeatherCurrent();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}

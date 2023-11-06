import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app_deneme/cubit/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app_deneme/cubit/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app_deneme/view/search_view.dart';
import 'package:weather_app_deneme/widget/no_weather_widget.dart';
import 'package:weather_app_deneme/widget/weather_list_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SearchView();
              }));
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeaterState>(
        builder: (context, state) {
          if (state is InitialWeatherState) {
            return const NoWeatherWidget();
          } else if (state is WeatherLoadedState) {
            return WeatherListWidget(
              weatherModel: state.weatherModel,
            );
          } else {
            return const Text('no data here');
          }
        },
      ),
    );
  }
}

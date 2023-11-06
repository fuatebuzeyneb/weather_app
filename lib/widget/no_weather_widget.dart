import 'package:flutter/material.dart';

class NoWeatherWidget extends StatelessWidget {
  const NoWeatherWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No Data, Please click the Search icon and Enter your City'),
    );
  }
}

class WeatherModel {
  final String image;
  final String avgTemp;
  final String maxTemp;
  final String minTemp;
  final String date;
  final String conditionText;

  WeatherModel(
      {required this.image,
      required this.avgTemp,
      required this.maxTemp,
      required this.minTemp,
      required this.date,
      required this.conditionText});

  factory WeatherModel.fromJson(json, int a) {
    return WeatherModel(
        image: json[a]['day']['condition']['icon'],
        avgTemp: json[a]['day']['avgtemp_c'].toString(),
        maxTemp: json[a]['day']['maxtemp_c'].toString(),
        minTemp: json[a]['day']['mintemp_c'].toString(),
        date: json[a]['date'],
        conditionText: json[a]['day']['condition']['text']);
  }
}

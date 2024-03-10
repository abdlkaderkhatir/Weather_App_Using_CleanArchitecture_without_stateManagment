import 'package:weather_app_with_clean/weather/domain/entities/weather.dart';

// is this DTO class?

class WeatherModel extends Weather{

  WeatherModel({
    int? id,
    String? cityName,
    String? main,
    String? description,
    int? pressure,
  }) : super(
    id: id,
    cityName: cityName,
    main: main,
    description: description,
    pressure: pressure,
  );

  // WeatherModel({
  //   super.id,
  //   super.cityName,
  //   super.main,
  //   super.description,
  //   super.pressure,
  // });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      id: json['id'],
      cityName: json['name'],
      main: json['weather'][0]['main'],
      description: json['weather'][0]['description'],
      pressure: json['main']['pressure'],
    );
  }
}


import 'package:weather_app_with_clean/weather/domain/entities/weather.dart';
 
abstract class WeatherRepository {
  
  Future<Weather> fetchWeather(String cityName);
}
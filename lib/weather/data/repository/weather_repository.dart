import 'package:weather_app_with_clean/weather/data/datasource/remote_datasource.dart';
import 'package:weather_app_with_clean/weather/domain/entities/weather.dart';
import 'package:weather_app_with_clean/weather/domain/repository/base_weather_repository.dart';

class WeatherRepository implements BaseWeatherRepository {

  final RemoteDataSource remoteDataSource;

  WeatherRepository({required this.remoteDataSource});

  @override
  Future<Weather> fetchWeather(String cityName) async {
    return await remoteDataSource.getWeather(cityName) ?? Weather();
  }
  
}

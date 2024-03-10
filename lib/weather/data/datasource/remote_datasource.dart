
import 'dart:convert';

import 'package:weather_app_with_clean/core/utils/constances.dart';
import 'package:weather_app_with_clean/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class BaseRemoteDataSource {
  Future<WeatherModel?> getWeather(String city);
}


class RemoteDataSource  implements BaseRemoteDataSource{
  @override
  Future<WeatherModel?> getWeather(String city) async {
    try {
      var response = await Dio().get('${AppConstants.baseUrl}/weather?q=$city&appid=${AppConstants.apiKey}');
      print(response);
      var JsonData =  json.decode(response.data);
      return WeatherModel.fromJson(JsonData);
    } catch (e) {
      print(e);
      return null;
      // throw e;
    }
  }
  

}
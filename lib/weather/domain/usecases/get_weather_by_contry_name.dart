

import 'package:weather_app_with_clean/weather/domain/entities/weather.dart';
import 'package:weather_app_with_clean/weather/domain/repository/weather_repository.dart';

class GetWeatherUseCase {
  final WeatherRepository _weatherRepository;

  GetWeatherUseCase(this._weatherRepository);

  Future<Weather> execute(String countryName) async {
    return await _weatherRepository.fetchWeather(countryName);
  }
}

// class Failure {
//   final String message;

//   Failure(this.message);
// }

// class WeatherEntity {
//   final int? id;
//   final String? cityName;
//   final String? main;
//   final String? description;
//   final int? pressure;

//   WeatherEntity({
//     this.id,
//     this.cityName,
//     this.main,
//     this.description,
//     this.pressure,
//   });
// }

// class Either<L, R> {
//   final L? left;
//   final R? right;

//   Either({this.left, this.right});
// }

// class WeatherRepository {
//   Future<Either<Failure, WeatherEntity>> getWeatherByCountryName(String countryName) async {
//     return Either(
//       right: WeatherEntity(
//         id: 1,
//         cityName: 'London',
//         main: 'Clouds',
//         description: 'overcast clouds',
//         pressure: 1012,
//       ),
//     );
//   }
// }
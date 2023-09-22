import 'package:dart_mappable/dart_mappable.dart';
import 'package:weather_repository/weather_repository.dart'
    as weather_repository;

part 'weather.mapper.dart';

@MappableClass()
class Temperature with TemperatureMappable {
  const Temperature({required this.value});

  final double value;
}

@MappableClass()
class Weather with WeatherMappable {
  const Weather({
    required this.condition,
    required this.lastUpdated,
    required this.location,
    required this.temperature,
  });

  factory Weather.fromRepository(weather_repository.Weather weather) {
    return Weather(
      condition: weather.condition,
      lastUpdated: DateTime.now().toUtc(),
      location: weather.location,
      temperature: Temperature(value: weather.temperature),
    );
  }

  factory Weather.empty() => Weather(
        condition: weather_repository.WeatherCondition.unknown,
        lastUpdated: DateTime(0).toUtc(),
        temperature: const Temperature(value: 0),
        location: '--',
      );

  final weather_repository.WeatherCondition condition;
  final DateTime lastUpdated;
  final String location;
  final Temperature temperature;
}

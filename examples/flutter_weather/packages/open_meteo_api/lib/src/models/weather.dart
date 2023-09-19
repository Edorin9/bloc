import 'package:dart_mappable/dart_mappable.dart';

part 'weather.mapper.dart';

@MappableClass()
class Weather with WeatherMappable {
  const Weather({required this.temperature, required this.weatherCode});

  final double temperature;
  @MappableField(key: 'weathercode')
  final double weatherCode;
}

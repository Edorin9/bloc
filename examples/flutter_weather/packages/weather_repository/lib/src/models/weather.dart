import 'package:dart_mappable/dart_mappable.dart';

part 'weather.mapper.dart';

@MappableEnum()
enum WeatherCondition {
  clear,
  rainy,
  cloudy,
  snowy,
  unknown,
}

@MappableClass()
class Weather with WeatherMappable {
  const Weather({
    required this.location,
    required this.temperature,
    required this.condition,
  });

  final String location;
  final double temperature;
  final WeatherCondition condition;
}

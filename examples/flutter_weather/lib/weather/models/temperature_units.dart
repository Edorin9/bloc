import 'package:dart_mappable/dart_mappable.dart';

@MappableEnum()
enum TemperatureUnits { fahrenheit, celsius }

extension TemperatureUnitsExt on TemperatureUnits {
  bool get isFahrenheit => this == TemperatureUnits.fahrenheit;
  bool get isCelsius => this == TemperatureUnits.celsius;
}

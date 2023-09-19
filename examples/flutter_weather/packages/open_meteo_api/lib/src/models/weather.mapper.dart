// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'weather.dart';

class WeatherMapper extends ClassMapperBase<Weather> {
  WeatherMapper._();

  static WeatherMapper? _instance;
  static WeatherMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeatherMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Weather';

  static double _$temperature(Weather v) => v.temperature;
  static const Field<Weather, double> _f$temperature =
      Field('temperature', _$temperature);
  static double _$weatherCode(Weather v) => v.weatherCode;
  static const Field<Weather, double> _f$weatherCode =
      Field('weatherCode', _$weatherCode, key: 'weathercode');

  @override
  final Map<Symbol, Field<Weather, dynamic>> fields = const {
    #temperature: _f$temperature,
    #weatherCode: _f$weatherCode,
  };

  static Weather _instantiate(DecodingData data) {
    return Weather(
        temperature: data.dec(_f$temperature),
        weatherCode: data.dec(_f$weatherCode));
  }

  @override
  final Function instantiate = _instantiate;

  static Weather fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Weather>(map));
  }

  static Weather fromJson(String json) {
    return _guard((c) => c.fromJson<Weather>(json));
  }
}

mixin WeatherMappable {
  String toJson() {
    return WeatherMapper._guard((c) => c.toJson(this as Weather));
  }

  Map<String, dynamic> toMap() {
    return WeatherMapper._guard((c) => c.toMap(this as Weather));
  }
}

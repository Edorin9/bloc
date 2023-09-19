// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'weather.dart';

class WeatherConditionMapper extends EnumMapper<WeatherCondition> {
  WeatherConditionMapper._();

  static WeatherConditionMapper? _instance;
  static WeatherConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeatherConditionMapper._());
    }
    return _instance!;
  }

  static WeatherCondition fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  WeatherCondition decode(dynamic value) {
    switch (value) {
      case 'clear':
        return WeatherCondition.clear;
      case 'rainy':
        return WeatherCondition.rainy;
      case 'cloudy':
        return WeatherCondition.cloudy;
      case 'snowy':
        return WeatherCondition.snowy;
      case 'unknown':
        return WeatherCondition.unknown;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(WeatherCondition self) {
    switch (self) {
      case WeatherCondition.clear:
        return 'clear';
      case WeatherCondition.rainy:
        return 'rainy';
      case WeatherCondition.cloudy:
        return 'cloudy';
      case WeatherCondition.snowy:
        return 'snowy';
      case WeatherCondition.unknown:
        return 'unknown';
    }
  }
}

extension WeatherConditionMapperExtension on WeatherCondition {
  String toValue() {
    WeatherConditionMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class WeatherMapper extends ClassMapperBase<Weather> {
  WeatherMapper._();

  static WeatherMapper? _instance;
  static WeatherMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeatherMapper._());
      WeatherConditionMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Weather';

  static String _$location(Weather v) => v.location;
  static const Field<Weather, String> _f$location =
      Field('location', _$location);
  static double _$temperature(Weather v) => v.temperature;
  static const Field<Weather, double> _f$temperature =
      Field('temperature', _$temperature);
  static WeatherCondition _$condition(Weather v) => v.condition;
  static const Field<Weather, WeatherCondition> _f$condition =
      Field('condition', _$condition);

  @override
  final Map<Symbol, Field<Weather, dynamic>> fields = const {
    #location: _f$location,
    #temperature: _f$temperature,
    #condition: _f$condition,
  };

  static Weather _instantiate(DecodingData data) {
    return Weather(
        location: data.dec(_f$location),
        temperature: data.dec(_f$temperature),
        condition: data.dec(_f$condition));
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

  @override
  String toString() {
    return WeatherMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            WeatherMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return WeatherMapper._guard((c) => c.hash(this));
  }
}

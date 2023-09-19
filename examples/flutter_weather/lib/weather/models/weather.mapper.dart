// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'weather.dart';

class TemperatureUnitsMapper extends EnumMapper<TemperatureUnits> {
  TemperatureUnitsMapper._();

  static TemperatureUnitsMapper? _instance;
  static TemperatureUnitsMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TemperatureUnitsMapper._());
    }
    return _instance!;
  }

  static TemperatureUnits fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  TemperatureUnits decode(dynamic value) {
    switch (value) {
      case 'fahrenheit':
        return TemperatureUnits.fahrenheit;
      case 'celsius':
        return TemperatureUnits.celsius;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(TemperatureUnits self) {
    switch (self) {
      case TemperatureUnits.fahrenheit:
        return 'fahrenheit';
      case TemperatureUnits.celsius:
        return 'celsius';
    }
  }
}

extension TemperatureUnitsMapperExtension on TemperatureUnits {
  String toValue() {
    TemperatureUnitsMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class TemperatureMapper extends ClassMapperBase<Temperature> {
  TemperatureMapper._();

  static TemperatureMapper? _instance;
  static TemperatureMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TemperatureMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Temperature';

  static double _$value(Temperature v) => v.value;
  static const Field<Temperature, double> _f$value = Field('value', _$value);

  @override
  final Map<Symbol, Field<Temperature, dynamic>> fields = const {
    #value: _f$value,
  };

  static Temperature _instantiate(DecodingData data) {
    return Temperature(value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static Temperature fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Temperature>(map));
  }

  static Temperature fromJson(String json) {
    return _guard((c) => c.fromJson<Temperature>(json));
  }
}

mixin TemperatureMappable {
  String toJson() {
    return TemperatureMapper._guard((c) => c.toJson(this as Temperature));
  }

  Map<String, dynamic> toMap() {
    return TemperatureMapper._guard((c) => c.toMap(this as Temperature));
  }

  TemperatureCopyWith<Temperature, Temperature, Temperature> get copyWith =>
      _TemperatureCopyWithImpl(this as Temperature, $identity, $identity);
  @override
  String toString() {
    return TemperatureMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            TemperatureMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return TemperatureMapper._guard((c) => c.hash(this));
  }
}

extension TemperatureValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Temperature, $Out> {
  TemperatureCopyWith<$R, Temperature, $Out> get $asTemperature =>
      $base.as((v, t, t2) => _TemperatureCopyWithImpl(v, t, t2));
}

abstract class TemperatureCopyWith<$R, $In extends Temperature, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({double? value});
  TemperatureCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TemperatureCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Temperature, $Out>
    implements TemperatureCopyWith<$R, Temperature, $Out> {
  _TemperatureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Temperature> $mapper =
      TemperatureMapper.ensureInitialized();
  @override
  $R call({double? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  Temperature $make(CopyWithData data) =>
      Temperature(value: data.get(#value, or: $value.value));

  @override
  TemperatureCopyWith<$R2, Temperature, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TemperatureCopyWithImpl($value, $cast, t);
}

class WeatherMapper extends ClassMapperBase<Weather> {
  WeatherMapper._();

  static WeatherMapper? _instance;
  static WeatherMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeatherMapper._());
      weather_repository.WeatherConditionMapper.ensureInitialized();
      TemperatureMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Weather';

  static weather_repository.WeatherCondition _$condition(Weather v) =>
      v.condition;
  static const Field<Weather, weather_repository.WeatherCondition>
      _f$condition = Field('condition', _$condition);
  static DateTime _$lastUpdated(Weather v) => v.lastUpdated;
  static const Field<Weather, DateTime> _f$lastUpdated =
      Field('lastUpdated', _$lastUpdated);
  static String _$location(Weather v) => v.location;
  static const Field<Weather, String> _f$location =
      Field('location', _$location);
  static Temperature _$temperature(Weather v) => v.temperature;
  static const Field<Weather, Temperature> _f$temperature =
      Field('temperature', _$temperature);

  @override
  final Map<Symbol, Field<Weather, dynamic>> fields = const {
    #condition: _f$condition,
    #lastUpdated: _f$lastUpdated,
    #location: _f$location,
    #temperature: _f$temperature,
  };

  static Weather _instantiate(DecodingData data) {
    return Weather(
        condition: data.dec(_f$condition),
        lastUpdated: data.dec(_f$lastUpdated),
        location: data.dec(_f$location),
        temperature: data.dec(_f$temperature));
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

  WeatherCopyWith<Weather, Weather, Weather> get copyWith =>
      _WeatherCopyWithImpl(this as Weather, $identity, $identity);
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

extension WeatherValueCopy<$R, $Out> on ObjectCopyWith<$R, Weather, $Out> {
  WeatherCopyWith<$R, Weather, $Out> get $asWeather =>
      $base.as((v, t, t2) => _WeatherCopyWithImpl(v, t, t2));
}

abstract class WeatherCopyWith<$R, $In extends Weather, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  TemperatureCopyWith<$R, Temperature, Temperature> get temperature;
  $R call(
      {weather_repository.WeatherCondition? condition,
      DateTime? lastUpdated,
      String? location,
      Temperature? temperature});
  WeatherCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WeatherCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Weather, $Out>
    implements WeatherCopyWith<$R, Weather, $Out> {
  _WeatherCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Weather> $mapper =
      WeatherMapper.ensureInitialized();
  @override
  TemperatureCopyWith<$R, Temperature, Temperature> get temperature =>
      $value.temperature.copyWith.$chain((v) => call(temperature: v));
  @override
  $R call(
          {weather_repository.WeatherCondition? condition,
          DateTime? lastUpdated,
          String? location,
          Temperature? temperature}) =>
      $apply(FieldCopyWithData({
        if (condition != null) #condition: condition,
        if (lastUpdated != null) #lastUpdated: lastUpdated,
        if (location != null) #location: location,
        if (temperature != null) #temperature: temperature
      }));
  @override
  Weather $make(CopyWithData data) => Weather(
      condition: data.get(#condition, or: $value.condition),
      lastUpdated: data.get(#lastUpdated, or: $value.lastUpdated),
      location: data.get(#location, or: $value.location),
      temperature: data.get(#temperature, or: $value.temperature));

  @override
  WeatherCopyWith<$R2, Weather, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WeatherCopyWithImpl($value, $cast, t);
}

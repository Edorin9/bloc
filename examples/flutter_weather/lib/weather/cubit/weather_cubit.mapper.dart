// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'weather_cubit.dart';

class WeatherStatusMapper extends EnumMapper<WeatherStatus> {
  WeatherStatusMapper._();

  static WeatherStatusMapper? _instance;
  static WeatherStatusMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeatherStatusMapper._());
    }
    return _instance!;
  }

  static WeatherStatus fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  WeatherStatus decode(dynamic value) {
    switch (value) {
      case 'initial':
        return WeatherStatus.initial;
      case 'loading':
        return WeatherStatus.loading;
      case 'success':
        return WeatherStatus.success;
      case 'failure':
        return WeatherStatus.failure;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(WeatherStatus self) {
    switch (self) {
      case WeatherStatus.initial:
        return 'initial';
      case WeatherStatus.loading:
        return 'loading';
      case WeatherStatus.success:
        return 'success';
      case WeatherStatus.failure:
        return 'failure';
    }
  }
}

extension WeatherStatusMapperExtension on WeatherStatus {
  String toValue() {
    WeatherStatusMapper.ensureInitialized();
    return MapperContainer.globals.toValue(this) as String;
  }
}

class WeatherStateMapper extends ClassMapperBase<WeatherState> {
  WeatherStateMapper._();

  static WeatherStateMapper? _instance;
  static WeatherStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WeatherStateMapper._());
      WeatherStatusMapper.ensureInitialized();
      TemperatureUnitsMapper.ensureInitialized();
      WeatherMapper.ensureInitialized();
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'WeatherState';

  static WeatherStatus _$status(WeatherState v) => v.status;
  static const Field<WeatherState, WeatherStatus> _f$status =
      Field('status', _$status, opt: true, def: WeatherStatus.initial);
  static TemperatureUnits _$temperatureUnits(WeatherState v) =>
      v.temperatureUnits;
  static const Field<WeatherState, TemperatureUnits> _f$temperatureUnits =
      Field('temperatureUnits', _$temperatureUnits,
          opt: true, def: TemperatureUnits.celsius);
  static Weather _$weather(WeatherState v) => v.weather;
  static const Field<WeatherState, Weather> _f$weather =
      Field('weather', _$weather, opt: true);

  @override
  final Map<Symbol, Field<WeatherState, dynamic>> fields = const {
    #status: _f$status,
    #temperatureUnits: _f$temperatureUnits,
    #weather: _f$weather,
  };

  static WeatherState _instantiate(DecodingData data) {
    return WeatherState(
        status: data.dec(_f$status),
        temperatureUnits: data.dec(_f$temperatureUnits),
        weather: data.dec(_f$weather));
  }

  @override
  final Function instantiate = _instantiate;

  static WeatherState fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<WeatherState>(map));
  }

  static WeatherState fromJson(String json) {
    return _guard((c) => c.fromJson<WeatherState>(json));
  }
}

mixin WeatherStateMappable {
  String toJson() {
    return WeatherStateMapper._guard((c) => c.toJson(this as WeatherState));
  }

  Map<String, dynamic> toMap() {
    return WeatherStateMapper._guard((c) => c.toMap(this as WeatherState));
  }

  WeatherStateCopyWith<WeatherState, WeatherState, WeatherState> get copyWith =>
      _WeatherStateCopyWithImpl(this as WeatherState, $identity, $identity);
  @override
  String toString() {
    return WeatherStateMapper._guard((c) => c.asString(this));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (runtimeType == other.runtimeType &&
            WeatherStateMapper._guard((c) => c.isEqual(this, other)));
  }

  @override
  int get hashCode {
    return WeatherStateMapper._guard((c) => c.hash(this));
  }
}

extension WeatherStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, WeatherState, $Out> {
  WeatherStateCopyWith<$R, WeatherState, $Out> get $asWeatherState =>
      $base.as((v, t, t2) => _WeatherStateCopyWithImpl(v, t, t2));
}

abstract class WeatherStateCopyWith<$R, $In extends WeatherState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  WeatherCopyWith<$R, Weather, Weather> get weather;
  $R call(
      {WeatherStatus? status,
      TemperatureUnits? temperatureUnits,
      Weather? weather});
  WeatherStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WeatherStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WeatherState, $Out>
    implements WeatherStateCopyWith<$R, WeatherState, $Out> {
  _WeatherStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WeatherState> $mapper =
      WeatherStateMapper.ensureInitialized();
  @override
  WeatherCopyWith<$R, Weather, Weather> get weather =>
      ($value.weather as Weather).copyWith.$chain((v) => call(weather: v));
  @override
  $R call(
          {WeatherStatus? status,
          TemperatureUnits? temperatureUnits,
          Object? weather = $none}) =>
      $apply(FieldCopyWithData({
        if (status != null) #status: status,
        if (temperatureUnits != null) #temperatureUnits: temperatureUnits,
        if (weather != $none) #weather: weather
      }));
  @override
  WeatherState $make(CopyWithData data) => WeatherState(
      status: data.get(#status, or: $value.status),
      temperatureUnits:
          data.get(#temperatureUnits, or: $value.temperatureUnits),
      weather: data.get(#weather, or: $value.weather));

  @override
  WeatherStateCopyWith<$R2, WeatherState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _WeatherStateCopyWithImpl($value, $cast, t);
}

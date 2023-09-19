// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element

part of 'location.dart';

class LocationMapper extends ClassMapperBase<Location> {
  LocationMapper._();

  static LocationMapper? _instance;
  static LocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LocationMapper._());
    }
    return _instance!;
  }

  static T _guard<T>(T Function(MapperContainer) fn) {
    ensureInitialized();
    return fn(MapperContainer.globals);
  }

  @override
  final String id = 'Location';

  static int _$id(Location v) => v.id;
  static const Field<Location, int> _f$id = Field('id', _$id);
  static String _$name(Location v) => v.name;
  static const Field<Location, String> _f$name = Field('name', _$name);
  static double _$latitude(Location v) => v.latitude;
  static const Field<Location, double> _f$latitude =
      Field('latitude', _$latitude);
  static double _$longitude(Location v) => v.longitude;
  static const Field<Location, double> _f$longitude =
      Field('longitude', _$longitude);

  @override
  final Map<Symbol, Field<Location, dynamic>> fields = const {
    #id: _f$id,
    #name: _f$name,
    #latitude: _f$latitude,
    #longitude: _f$longitude,
  };

  static Location _instantiate(DecodingData data) {
    return Location(
        id: data.dec(_f$id),
        name: data.dec(_f$name),
        latitude: data.dec(_f$latitude),
        longitude: data.dec(_f$longitude));
  }

  @override
  final Function instantiate = _instantiate;

  static Location fromMap(Map<String, dynamic> map) {
    return _guard((c) => c.fromMap<Location>(map));
  }

  static Location fromJson(String json) {
    return _guard((c) => c.fromJson<Location>(json));
  }
}

mixin LocationMappable {
  String toJson() {
    return LocationMapper._guard((c) => c.toJson(this as Location));
  }

  Map<String, dynamic> toMap() {
    return LocationMapper._guard((c) => c.toMap(this as Location));
  }
}

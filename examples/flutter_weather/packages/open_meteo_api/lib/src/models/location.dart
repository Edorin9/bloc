import 'package:dart_mappable/dart_mappable.dart';

part 'location.mapper.dart';

@MappableClass()
class Location with LocationMappable {
  const Location({
    required this.id,
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  final int id;
  final String name;
  final double latitude;
  final double longitude;
}

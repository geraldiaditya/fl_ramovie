// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cinema _$CinemaFromJson(Map<String, dynamic> json) => _Cinema(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  brand: json['brand'] as String? ?? '',
  city: json['city'] as String? ?? '',
  address: json['address'] as String? ?? '',
  rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
  lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
  lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
  pictureUrl: json['picture_url'] as String? ?? '',
  distance: (json['distance'] as num?)?.toDouble(),
);

Map<String, dynamic> _$CinemaToJson(_Cinema instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'brand': instance.brand,
  'city': instance.city,
  'address': instance.address,
  'rating': instance.rating,
  'lat': instance.lat,
  'lon': instance.lon,
  'picture_url': instance.pictureUrl,
  'distance': instance.distance,
};

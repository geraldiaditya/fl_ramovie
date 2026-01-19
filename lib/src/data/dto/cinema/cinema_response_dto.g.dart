// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CinemaResponseDto _$CinemaResponseDtoFromJson(Map<String, dynamic> json) =>
    _CinemaResponseDto(
      pictureUrl: json['picture_url'] as String,
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      brand: json['brand'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
      distanceKm: (json['distance_km'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CinemaResponseDtoToJson(_CinemaResponseDto instance) =>
    <String, dynamic>{
      'picture_url': instance.pictureUrl,
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'city': instance.city,
      'address': instance.address,
      'rating': instance.rating,
      'lat': instance.lat,
      'lon': instance.lon,
      'distance_km': instance.distanceKm,
    };

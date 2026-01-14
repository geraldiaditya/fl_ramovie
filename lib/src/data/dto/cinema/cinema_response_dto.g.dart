// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CinemaResponseDto _$CinemaResponseDtoFromJson(Map<String, dynamic> json) =>
    _CinemaResponseDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      city: json['city'] as String? ?? '',
      address: json['address'] as String? ?? '',
      rating: (json['rating'] as num?)?.toDouble() ?? 0.0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lon: (json['lon'] as num?)?.toDouble() ?? 0.0,
      pictureUrl: json['picture_url'] as String? ?? '',
    );

Map<String, dynamic> _$CinemaResponseDtoToJson(_CinemaResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'city': instance.city,
      'address': instance.address,
      'rating': instance.rating,
      'lat': instance.lat,
      'lon': instance.lon,
      'picture_url': instance.pictureUrl,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BannerDto _$BannerDtoFromJson(Map<String, dynamic> json) => _BannerDto(
  movieId: (json['movie_id'] as num).toInt(),
  title: json['title'] as String,
  posterUrl: json['poster_url'] as String,
  rating: (json['rating'] as num).toDouble(),
  genres:
      (json['genres'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$BannerDtoToJson(_BannerDto instance) =>
    <String, dynamic>{
      'movie_id': instance.movieId,
      'title': instance.title,
      'poster_url': instance.posterUrl,
      'rating': instance.rating,
      'genres': instance.genres,
    };

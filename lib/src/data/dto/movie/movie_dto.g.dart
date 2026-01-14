// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieDto _$MovieDtoFromJson(Map<String, dynamic> json) => _MovieDto(
  id: (json['id'] as num).toInt(),
  title: json['title'] as String,
  duration: (json['duration'] as num).toInt(),
  rating: (json['rating'] as num).toDouble(),
  posterUrl: json['poster_url'] as String,
  genres: (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$MovieDtoToJson(_MovieDto instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'duration': instance.duration,
  'rating': instance.rating,
  'poster_url': instance.posterUrl,
  'genres': instance.genres,
};

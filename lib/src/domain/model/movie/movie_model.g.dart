// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieModel _$MovieModelFromJson(Map<String, dynamic> json) => _MovieModel(
  title: json['title'] as String,
  posterUrl: json['poster_url'] as String,
  rating: (json['rating'] as num).toDouble(),
);

Map<String, dynamic> _$MovieModelToJson(_MovieModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'poster_url': instance.posterUrl,
      'rating': instance.rating,
    };

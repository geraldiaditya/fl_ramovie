// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_category_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieCategoryDto _$MovieCategoryDtoFromJson(Map<String, dynamic> json) =>
    _MovieCategoryDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$MovieCategoryDtoToJson(_MovieCategoryDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

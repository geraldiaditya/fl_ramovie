// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BrandResponseDto _$BrandResponseDtoFromJson(Map<String, dynamic> json) =>
    _BrandResponseDto(
      brands:
          (json['brands'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$BrandResponseDtoToJson(_BrandResponseDto instance) =>
    <String, dynamic>{'brands': instance.brands};

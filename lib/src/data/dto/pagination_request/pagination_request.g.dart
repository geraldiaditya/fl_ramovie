// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaginationRequest _$PaginationRequestFromJson(Map<String, dynamic> json) =>
    _PaginationRequest(
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$PaginationRequestToJson(_PaginationRequest instance) =>
    <String, dynamic>{'page': instance.page, 'limit': instance.limit};

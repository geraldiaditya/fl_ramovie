// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TicketListResponseDto _$TicketListResponseDtoFromJson(
  Map<String, dynamic> json,
) => _TicketListResponseDto(
  tickets:
      (json['tickets'] as List<dynamic>?)
          ?.map((e) => TicketResponseDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TicketListResponseDtoToJson(
  _TicketListResponseDto instance,
) => <String, dynamic>{'tickets': instance.tickets};

_TicketResponseDto _$TicketResponseDtoFromJson(Map<String, dynamic> json) =>
    _TicketResponseDto(
      id: (json['id'] as num).toInt(),
      movieTitle: json['movie_title'] as String,
      posterUrl: json['poster_url'] as String,
      date: json['date'] as String,
      time: json['time'] as String,
      cinemaName: json['cinema_name'] as String,
      isActive: json['is_active'] as bool,
    );

Map<String, dynamic> _$TicketResponseDtoToJson(_TicketResponseDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'movie_title': instance.movieTitle,
      'poster_url': instance.posterUrl,
      'date': instance.date,
      'time': instance.time,
      'cinema_name': instance.cinemaName,
      'is_active': instance.isActive,
    };

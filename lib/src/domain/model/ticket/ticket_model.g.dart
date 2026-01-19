// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Ticket _$TicketFromJson(Map<String, dynamic> json) => _Ticket(
  id: (json['id'] as num).toInt(),
  movieTitle: json['movie_title'] as String,
  posterUrl: json['poster_url'] as String,
  date: DateTime.parse(json['date'] as String),
  time: json['time'] as String,
  cinemaName: json['cinema_name'] as String,
  isActive: json['is_active'] as bool,
);

Map<String, dynamic> _$TicketToJson(_Ticket instance) => <String, dynamic>{
  'id': instance.id,
  'movie_title': instance.movieTitle,
  'poster_url': instance.posterUrl,
  'date': instance.date.toIso8601String(),
  'time': instance.time,
  'cinema_name': instance.cinemaName,
  'is_active': instance.isActive,
};

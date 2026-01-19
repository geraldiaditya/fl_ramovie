import 'package:freezed_annotation/freezed_annotation.dart';

part 'ticket_model.freezed.dart';
part 'ticket_model.g.dart';

@freezed
abstract class Ticket with _$Ticket {
  const factory Ticket({
    required int id,
    required String movieTitle,
    @JsonKey(name: 'poster_url') required String posterUrl,
    required DateTime date,
    required String time,
    required String cinemaName,
    required bool isActive,
  }) = _Ticket;

  factory Ticket.fromJson(Map<String, dynamic> json) => _$TicketFromJson(json);
}

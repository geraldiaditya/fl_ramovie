import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ra_movie/src/domain/model/ticket/ticket_model.dart';

part 'ticket_response_dto.freezed.dart';
part 'ticket_response_dto.g.dart';

@freezed
abstract class TicketListResponseDto with _$TicketListResponseDto {
  const factory TicketListResponseDto({
    @Default([]) List<TicketResponseDto> tickets,
  }) = _TicketListResponseDto;

  factory TicketListResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TicketListResponseDtoFromJson(json);
}

@freezed
abstract class TicketResponseDto with _$TicketResponseDto {
  const factory TicketResponseDto({
    required int id,
    @JsonKey(name: 'movie_title') required String movieTitle,
    @JsonKey(name: 'poster_url') required String posterUrl,
    required String date,
    required String time,
    @JsonKey(name: 'cinema_name') required String cinemaName,
    @JsonKey(name: 'is_active') required bool isActive,
  }) = _TicketResponseDto;

  factory TicketResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TicketResponseDtoFromJson(json);
}

extension TicketResponseDtoX on TicketResponseDto {
  Ticket toDomain() {
    return Ticket(
      id: id,
      movieTitle: movieTitle,
      posterUrl: posterUrl,
      date: DateTime.tryParse(date) ?? DateTime.now(),
      time: time,
      cinemaName: cinemaName,
      isActive: isActive,
    );
  }
}

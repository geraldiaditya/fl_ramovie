import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_dto.g.dart';

part 'movie_dto.freezed.dart';

@freezed
abstract class MovieDto with _$MovieDto {
  const factory MovieDto({
    required int id,
    required String title,
    required int duration,
    required double rating,
    required String posterUrl,
    required List<String> genres,
  }) = _MovieDto;

  factory MovieDto.fromJson(Map<String, dynamic> json) =>
      _$MovieDtoFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';

part 'cinema_response_dto.freezed.dart';
part 'cinema_response_dto.g.dart';

@freezed
abstract class CinemaResponseDto with _$CinemaResponseDto {
  const factory CinemaResponseDto({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String city,
    @Default('') String address,
    @Default(0.0) double rating,
    @Default(0.0) double lat,
    @Default(0.0) double lon,
    @JsonKey(name: 'picture_url') @Default('') String pictureUrl,
  }) = _CinemaResponseDto;

  factory CinemaResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CinemaResponseDtoFromJson(json);
}

extension CinemaResponseDtoX on CinemaResponseDto {
  Cinema toDomain() {
    return Cinema(
      id: id,
      name: name,
      city: city,
      address: address,
      rating: rating,
      lat: lat,
      lon: lon,
      pictureUrl: pictureUrl,
    );
  }
}

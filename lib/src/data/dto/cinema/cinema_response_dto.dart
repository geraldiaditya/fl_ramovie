import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';

part 'cinema_response_dto.freezed.dart';
part 'cinema_response_dto.g.dart';

@freezed
abstract class CinemaResponseDto with _$CinemaResponseDto {
  const factory CinemaResponseDto({
    @JsonKey(name: 'picture_url') required String pictureUrl, @Default(0) int id,
    @Default('') String name,
    @Default('') String brand,
    @Default('') String city,
    @Default('') String address,
    @Default(0.0) double rating,
    @Default(0.0) double lat,
    @Default(0.0) double lon,
    @JsonKey(name: 'distance_km') double? distanceKm,
  }) = _CinemaResponseDto;

  factory CinemaResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CinemaResponseDtoFromJson(json);
}

extension CinemaResponseDtoX on CinemaResponseDto {
  Cinema toDomain() {
    return Cinema(
      id: id,
      name: name,
      brand: brand,
      city: city,
      address: address,
      rating: rating,
      lat: lat,
      lon: lon,
      pictureUrl: pictureUrl,
      distance: distanceKm,
    );
  }
}

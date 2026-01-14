import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_dto.freezed.dart';
part 'banner_dto.g.dart';


@freezed
abstract class BannerDto with _$BannerDto {
  const factory BannerDto({
    required int movieId,
    required String title,
    required String posterUrl,
    required double rating,
    @Default([]) List<String> genres,
}) = _BannerDto;

  factory BannerDto.fromJson(Map<String, dynamic> json) =>
      _$BannerDtoFromJson(json);
}

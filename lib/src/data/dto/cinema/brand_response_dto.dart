import 'package:freezed_annotation/freezed_annotation.dart';

part 'brand_response_dto.freezed.dart';
part 'brand_response_dto.g.dart';

@freezed
abstract class BrandResponseDto with _$BrandResponseDto {
  const factory BrandResponseDto({@Default([]) List<String> brands}) =
      _BrandResponseDto;

  factory BrandResponseDto.fromJson(Map<String, dynamic> json) =>
      _$BrandResponseDtoFromJson(json);
}

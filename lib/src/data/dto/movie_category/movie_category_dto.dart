import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_category_dto.freezed.dart';

part 'movie_category_dto.g.dart';

@freezed
abstract class MovieCategoryDto with _$MovieCategoryDto {
  const factory MovieCategoryDto({required int id, required String name}) =
      _MovieCategoryDto;

  factory MovieCategoryDto.fromJson(Map<String, dynamic> json) =>
      _$MovieCategoryDtoFromJson(json);

}

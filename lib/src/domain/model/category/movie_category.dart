import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_category.g.dart';

part 'movie_category.freezed.dart';

@freezed
abstract class MovieCategory with _$MovieCategory {
  const factory MovieCategory({required int id, required String name}) =
      _MovieCategory;

  factory MovieCategory.fromJson(Map<String, dynamic> json) =>
      _$MovieCategoryFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.g.dart';

part 'movie_model.freezed.dart';

@freezed
abstract class MovieModel with _$MovieModel {
  const factory MovieModel({
    required String title,
    required String posterUrl,
    required double rating,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

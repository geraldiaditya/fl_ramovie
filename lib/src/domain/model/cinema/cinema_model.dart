import 'package:freezed_annotation/freezed_annotation.dart';

part 'cinema_model.freezed.dart';
part 'cinema_model.g.dart';

@freezed
abstract class Cinema with _$Cinema {
  const factory Cinema({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String brand,
    @Default('') String city,
    @Default('') String address,
    @Default(0.0) double rating,
    @Default(0.0) double lat,
    @Default(0.0) double lon,
    @JsonKey(name: 'picture_url') @Default('') String pictureUrl,
    double? distance,
  }) = _Cinema;

  factory Cinema.fromJson(Map<String, dynamic> json) => _$CinemaFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_model.freezed.dart';

@freezed
abstract class BannerModel with _$BannerModel {
  const factory BannerModel({
    required String title,
    required String posterUrl,
    required double rating,
    required List<String> genres,
}) = _BannerModel;

}

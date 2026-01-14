import 'package:ra_movie/src/data/dto/banner/banner_dto.dart';
import 'package:ra_movie/src/domain/model/banner/banner_model.dart';

extension BannerExtension on BannerDto {
  BannerModel toModel() => BannerModel(
    title: title,
    posterUrl: posterUrl,
    rating: rating,
    genres: genres,
  );
}

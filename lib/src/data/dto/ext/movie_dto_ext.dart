import 'package:ra_movie/src/data/dto/movie/movie_dto.dart';
import 'package:ra_movie/src/domain/model/movie/movie_model.dart';

extension MovieDtoExt on MovieDto {
  MovieModel toModel() => MovieModel(title: title, posterUrl: posterUrl,rating: rating);
}

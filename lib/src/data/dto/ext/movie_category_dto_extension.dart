import 'package:ra_movie/src/data/dto/movie_category/movie_category_dto.dart';
import 'package:ra_movie/src/domain/model/category/movie_category.dart';
extension MovieCategoryDtoExtension on MovieCategoryDto{

  MovieCategory toModel() => MovieCategory(id: id, name: name);
}
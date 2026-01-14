
import 'package:ra_movie/src/domain/model/category/movie_category.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class GetListMovieCategories {
  final MovieRepository _repository;

  GetListMovieCategories(this._repository);

  Future<List<MovieCategory>> call() {
    return _repository.getListMovieCategories();
  }
}

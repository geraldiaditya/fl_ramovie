
import 'package:ra_movie/src/domain/model/category/movie_category.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class GetListMovieCategories {

  GetListMovieCategories(this._repository);
  final MovieRepository _repository;

  Future<List<MovieCategory>> call() {
    return _repository.getListMovieCategories();
  }
}

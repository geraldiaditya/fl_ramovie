import 'package:ra_movie/src/domain/model/movie/movie_model.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class GetMovies {
  final MovieRepository _repository;

  GetMovies(this._repository);

  Future<List<MovieModel>> call({String? category}) {
    return _repository.getMovies(category: category);
  }
}

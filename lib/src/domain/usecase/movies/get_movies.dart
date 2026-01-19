import 'package:ra_movie/src/domain/model/movie/movie_model.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class GetMovies {

  GetMovies(this._repository);
  final MovieRepository _repository;

  Future<List<MovieModel>> call({String? category}) {
    return _repository.getMovies(category: category);
  }
}

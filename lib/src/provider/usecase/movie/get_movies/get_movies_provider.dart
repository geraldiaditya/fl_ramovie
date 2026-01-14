import 'package:ra_movie/src/domain/usecase/movies/get_movies.dart';
import 'package:ra_movie/src/provider/repositories/movie/movie_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_movies_provider.g.dart';

@riverpod
GetMovies getMovies(Ref ref) {
  return GetMovies(ref.read(movieRepositoryProvider));
}

import 'package:ra_movie/src/domain/model/movie/movie_model.dart';
import 'package:ra_movie/src/provider/usecase/movie/get_movies/get_movies_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_list_provider.g.dart';

@riverpod
class MovieList extends _$MovieList {
  @override
  FutureOr<List<MovieModel>> build() async {
    final uc=ref.read(getMoviesProvider);
    return uc.call();
  }
}
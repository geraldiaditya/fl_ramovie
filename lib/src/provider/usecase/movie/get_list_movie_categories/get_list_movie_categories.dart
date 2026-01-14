import 'package:ra_movie/src/domain/usecase/movies/get_list_movie_categories.dart';
import 'package:ra_movie/src/provider/repositories/movie/movie_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_list_movie_categories.g.dart';

@riverpod
GetListMovieCategories getListMovieCategories(Ref ref) {
  return GetListMovieCategories(ref.read(movieRepositoryProvider));
}

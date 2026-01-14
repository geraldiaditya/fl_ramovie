import 'package:ra_movie/src/data/repositories/movie_repository_impl.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';
import 'package:ra_movie/src/provider/datasources/movie/movie_remote_data_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_repository_provider.g.dart';

@riverpod
MovieRepository movieRepository(Ref ref) {
  return MovieRepositoryImpl(ref.read(movieRemoteDataSourceProvider));
}

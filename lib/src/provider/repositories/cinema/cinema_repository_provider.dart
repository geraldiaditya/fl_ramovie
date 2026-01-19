import 'package:ra_movie/src/data/repositories/cinema_repository_impl.dart';
import 'package:ra_movie/src/domain/repositories/cinema_repository.dart';
import 'package:ra_movie/src/provider/datasources/cinema/cinema_remote_data_source_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cinema_repository_provider.g.dart';

@riverpod
CinemaRepository cinemaRepository(Ref ref) {
  return CinemaRepositoryImpl(ref.watch(cinemaRemoteDataSourceProvider));
}

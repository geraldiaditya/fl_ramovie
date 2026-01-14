import 'package:ra_movie/src/data/datasources/movie_remote_data_source.dart';
import 'package:ra_movie/src/provider/network/network_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'movie_remote_data_source_provider.g.dart';

@riverpod
MovieRemoteDataSource movieRemoteDataSource(Ref ref) {
  return MovieRemoteDataSource(ref.read(apiClientProvider));
}

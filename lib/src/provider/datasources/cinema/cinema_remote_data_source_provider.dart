import 'package:ra_movie/src/data/datasources/cinema_remote_data_source.dart';
import 'package:ra_movie/src/provider/network/network_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cinema_remote_data_source_provider.g.dart';

@riverpod
CinemaRemoteDataSource cinemaRemoteDataSource(Ref ref) {
  return CinemaRemoteDataSource(ref.watch(dioProvider));
}

import 'package:ra_movie/src/domain/usecase/movies/get_banner.dart';
import 'package:ra_movie/src/provider/repositories/movie/movie_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_banner_provider.g.dart';

@riverpod
GetBanner getBanner(Ref ref) {
  return GetBanner(ref.read(movieRepositoryProvider));
}

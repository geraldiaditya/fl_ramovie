import 'package:ra_movie/src/domain/model/banner/banner_model.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class GetBanner {
  final MovieRepository _repository;

  GetBanner(this._repository);

  Future<List<BannerModel>> call() {
    return _repository.getBanner();
  }
}

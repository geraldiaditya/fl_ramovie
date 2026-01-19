import 'package:ra_movie/src/domain/model/banner/banner_model.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class GetBanner {

  GetBanner(this._repository);
  final MovieRepository _repository;

  Future<List<BannerModel>> call() {
    return _repository.getBanner();
  }
}

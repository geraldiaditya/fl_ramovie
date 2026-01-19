import 'package:ra_movie/src/data/dto/banner/banner_dto.dart';
import 'package:ra_movie/src/data/dto/movie/movie_dto.dart';
import 'package:ra_movie/src/data/dto/movie_category/movie_category_dto.dart';
import 'package:ra_movie/src/data/dto/pagination_request/pagination_request.dart';
import 'package:ra_movie/src/data/dto/pagination_result/pagination_result.dart';
import 'package:ra_movie/src/data/network/retrofit/api_client.dart';

class MovieRemoteDataSource {

  MovieRemoteDataSource(this.api);
  final ApiClient api;

  Future<List<MovieCategoryDto>> getListMovieCategories() {
    return api.getMovieCategories();
  }

  Future<PaginationResult<List<MovieDto>>> getMovies({
    required String category,
  }) {
    return api.getMovies(
      additionalQueries: {"category": category},
      pagination: PaginationRequest(page: 1, limit: 10),
    );
  }

  Future<List<BannerDto>> getBanner() {
    return api.getBanner();
  }
}


import 'package:ra_movie/src/domain/model/banner/banner_model.dart';
import 'package:ra_movie/src/domain/model/category/movie_category.dart';
import 'package:ra_movie/src/domain/model/movie/movie_model.dart';

abstract class MovieRepository {

  Future<List<MovieCategory>> getListMovieCategories();

  Future<List<MovieModel>> getMovies({String? category});
  Future<List<BannerModel>> getBanner();
}

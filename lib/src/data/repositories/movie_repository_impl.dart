import 'package:ra_movie/src/data/datasources/movie_remote_data_source.dart';
import 'package:ra_movie/src/data/dto/ext/banner_extension.dart';
import 'package:ra_movie/src/data/dto/ext/movie_category_dto_extension.dart';
import 'package:ra_movie/src/data/dto/ext/movie_dto_ext.dart';
import 'package:ra_movie/src/domain/model/banner/banner_model.dart';
import 'package:ra_movie/src/domain/model/category/movie_category.dart';
import 'package:ra_movie/src/domain/model/movie/movie_model.dart';
import 'package:ra_movie/src/domain/repositories/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remote;

  MovieRepositoryImpl(this.remote);

  @override
  Future<List<MovieCategory>> getListMovieCategories() async {
    final res = await remote.getListMovieCategories();
    return res.map((e) => e.toModel()).toList();
  }

  @override
  Future<List<MovieModel>> getMovies({String? category}) async {
    final res = await remote.getMovies(category: category ?? "");
    return (res.data ?? []).map((e) => e.toModel()).toList();
  }

  @override
  Future<List<BannerModel>> getBanner() async {
    final res = await remote.getBanner();
    return res.map((e) => e.toModel()).toList();
  }
}

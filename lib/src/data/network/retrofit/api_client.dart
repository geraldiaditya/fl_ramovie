import 'package:dio/dio.dart';
import 'package:ra_movie/src/data/dto/banner/banner_dto.dart';
import 'package:ra_movie/src/data/dto/login_request/login_request_dto.dart';
import 'package:ra_movie/src/data/dto/login_response/login_response_dto.dart';
import 'package:ra_movie/src/data/dto/movie/movie_dto.dart';
import 'package:ra_movie/src/data/dto/movie_category/movie_category_dto.dart';
import 'package:ra_movie/src/data/dto/pagination_request/pagination_request.dart';
import 'package:ra_movie/src/data/dto/pagination_result/pagination_result.dart';
import 'package:ra_movie/src/data/dto/register_request/register_request_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @POST('/auth/login')
  Future<LoginResponseDto> login(@Body() LoginRequestDto body);

  @POST('/auth/register')
  Future<void> register(@Body() RegisterRequestDto body);

  @GET('/movies/categories')
  Future<List<MovieCategoryDto>> getMovieCategories();

  @GET('/movies')
  Future<PaginationResult<List<MovieDto>>> getMovies({
    @Queries() required PaginationRequest pagination,
    @Queries() required Map<String,dynamic> additionalQueries,
  });

  @GET('/movies/banner')
  Future<List<BannerDto>> getBanner();
}

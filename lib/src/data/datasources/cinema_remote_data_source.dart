import 'package:dio/dio.dart';
import 'package:ra_movie/src/data/dto/cinema/brand_response_dto.dart';
import 'package:ra_movie/src/data/dto/cinema/cinema_response_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'cinema_remote_data_source.g.dart';

@RestApi()
abstract class CinemaRemoteDataSource {
  factory CinemaRemoteDataSource(Dio dio, {String baseUrl}) =
      _CinemaRemoteDataSource;

  @GET('/cinemas')
  Future<List<CinemaResponseDto>> getCinemas({
    @Query('city') String? city,
    @Query('brand') String? brand,
  });

  @GET('/cinemas/brands')
  Future<BrandResponseDto> getBrands();
}

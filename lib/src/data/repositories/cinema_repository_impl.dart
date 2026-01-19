import 'package:ra_movie/src/data/datasources/cinema_remote_data_source.dart';
import 'package:ra_movie/src/data/dto/cinema/cinema_response_dto.dart';
import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';
import 'package:ra_movie/src/domain/repositories/cinema_repository.dart';

class CinemaRepositoryImpl implements CinemaRepository {

  CinemaRepositoryImpl(this._remoteDataSource);
  final CinemaRemoteDataSource _remoteDataSource;

  @override
  Future<List<Cinema>> getCinemas({
    String? name,
    String? city,
    String? brand,
    double? lat,
    double? lon,
    double? radius,
  }) async {
    final dtos = await _remoteDataSource.getCinemas(
      name: name,
      city: city,
      brand: brand,
      lat: lat,
      lon: lon,
      radius: radius,
    );
    return (dtos ?? []).map((dto) => dto.toDomain()).toList();
  }

  @override
  Future<List<String>> getBrands() async {
    final response = await _remoteDataSource.getBrands();
    return response.brands;
  }
}

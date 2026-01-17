import 'package:ra_movie/src/data/datasources/cinema_remote_data_source.dart';
import 'package:ra_movie/src/data/dto/cinema/cinema_response_dto.dart';
import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';
import 'package:ra_movie/src/domain/repositories/cinema_repository.dart';

class CinemaRepositoryImpl implements CinemaRepository {
  final CinemaRemoteDataSource _remoteDataSource;

  CinemaRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Cinema>> getCinemas({String? city, String? brand}) async {
    final dtos = await _remoteDataSource.getCinemas(city: city, brand: brand);
    return dtos.map((e) => e.toDomain()).toList();
  }

  @override
  Future<List<String>> getBrands() async {
    final response = await _remoteDataSource.getBrands();
    return response.brands;
  }
}

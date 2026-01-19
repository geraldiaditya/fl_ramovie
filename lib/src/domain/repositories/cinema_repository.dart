import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';

abstract class CinemaRepository {
  Future<List<Cinema>> getCinemas({
    String? name,
    String? city,
    String? brand,
    double? lat,
    double? lon,
    double? radius,
  });
  Future<List<String>> getBrands();
}

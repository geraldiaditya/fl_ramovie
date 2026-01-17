import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';

abstract class CinemaRepository {
  Future<List<Cinema>> getCinemas({String? city, String? brand});
  Future<List<String>> getBrands();
}

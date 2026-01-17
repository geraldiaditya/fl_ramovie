import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';
import 'package:ra_movie/src/provider/repositories/cinema/cinema_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cinema_controller.g.dart';

@riverpod
class CinemaController extends _$CinemaController {
  @override
  FutureOr<List<Cinema>> build() async {
    return _fetchCinemas();
  }

  Future<List<Cinema>> _fetchCinemas() async {
    final repository = ref.read(cinemaRepositoryProvider);
    return repository.getCinemas();
  }

  Future<void> filter({String? city, String? brand}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(cinemaRepositoryProvider);
      return repository.getCinemas(city: city, brand: brand);
    });
  }
}

@riverpod
class CinemaBrandController extends _$CinemaBrandController {
  @override
  FutureOr<List<String>> build() async {
    final repository = ref.read(cinemaRepositoryProvider);
    return repository.getBrands();
  }
}

@riverpod
class SelectedBrand extends _$SelectedBrand {
  @override
  String? build() {
    return null;
  }

  void set(String? value) {
    state = value;
  }
}

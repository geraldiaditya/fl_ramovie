import 'package:ra_movie/src/domain/model/cinema/cinema_model.dart';
import 'package:ra_movie/src/provider/repositories/cinema/cinema_repository_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'cinema_controller.g.dart';

@riverpod
class CinemaController extends _$CinemaController {
  @override
  FutureOr<List<Cinema>> build() async {
    return [];
  }

  void setLoading(){
    state= const AsyncValue.loading();
  }

  Future<void> filter({
    String? name,
    String? city,
    String? brand,
    double? lat,
    double? lon,
    double? radius,
  }) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final repository = ref.read(cinemaRepositoryProvider);
      return repository.getCinemas(
        name: name,
        city: city,
        brand: brand,
        lat: lat,
        lon: lon,
        radius: radius,
      );
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

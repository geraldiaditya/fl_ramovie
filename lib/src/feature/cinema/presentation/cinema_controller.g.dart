// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CinemaController)
const cinemaControllerProvider = CinemaControllerProvider._();

final class CinemaControllerProvider
    extends $AsyncNotifierProvider<CinemaController, List<Cinema>> {
  const CinemaControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cinemaControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cinemaControllerHash();

  @$internal
  @override
  CinemaController create() => CinemaController();
}

String _$cinemaControllerHash() => r'6d948c7af4fb1bb860f0a7b83fe827c8cfb533c5';

abstract class _$CinemaController extends $AsyncNotifier<List<Cinema>> {
  FutureOr<List<Cinema>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Cinema>>, List<Cinema>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Cinema>>, List<Cinema>>,
              AsyncValue<List<Cinema>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

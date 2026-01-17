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

String _$cinemaControllerHash() => r'003045943641d9699c6530890acd4e389b935c2e';

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

@ProviderFor(CinemaBrandController)
const cinemaBrandControllerProvider = CinemaBrandControllerProvider._();

final class CinemaBrandControllerProvider
    extends $AsyncNotifierProvider<CinemaBrandController, List<String>> {
  const CinemaBrandControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cinemaBrandControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cinemaBrandControllerHash();

  @$internal
  @override
  CinemaBrandController create() => CinemaBrandController();
}

String _$cinemaBrandControllerHash() =>
    r'f9afd5bf1f8a5a14ab059fa9446b42559123322a';

abstract class _$CinemaBrandController extends $AsyncNotifier<List<String>> {
  FutureOr<List<String>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<String>>, List<String>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<String>>, List<String>>,
              AsyncValue<List<String>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(SelectedBrand)
const selectedBrandProvider = SelectedBrandProvider._();

final class SelectedBrandProvider
    extends $NotifierProvider<SelectedBrand, String?> {
  const SelectedBrandProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'selectedBrandProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$selectedBrandHash();

  @$internal
  @override
  SelectedBrand create() => SelectedBrand();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String?>(value),
    );
  }
}

String _$selectedBrandHash() => r'7f7a4f0e28d03b9b126bcf85621b3c824443e909';

abstract class _$SelectedBrand extends $Notifier<String?> {
  String? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String?, String?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String?, String?>,
              String?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

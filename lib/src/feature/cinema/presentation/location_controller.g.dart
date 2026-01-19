// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LocationController)
const locationControllerProvider = LocationControllerProvider._();

final class LocationControllerProvider
    extends $AsyncNotifierProvider<LocationController, Position?> {
  const LocationControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'locationControllerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$locationControllerHash();

  @$internal
  @override
  LocationController create() => LocationController();
}

String _$locationControllerHash() =>
    r'544758ddf42a4e6781d88e374ca9efc0c4320bdc';

abstract class _$LocationController extends $AsyncNotifier<Position?> {
  FutureOr<Position?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Position?>, Position?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Position?>, Position?>,
              AsyncValue<Position?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

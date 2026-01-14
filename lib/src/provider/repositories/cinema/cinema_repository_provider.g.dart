// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cinemaRepository)
const cinemaRepositoryProvider = CinemaRepositoryProvider._();

final class CinemaRepositoryProvider
    extends
        $FunctionalProvider<
          CinemaRepository,
          CinemaRepository,
          CinemaRepository
        >
    with $Provider<CinemaRepository> {
  const CinemaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cinemaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cinemaRepositoryHash();

  @$internal
  @override
  $ProviderElement<CinemaRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CinemaRepository create(Ref ref) {
    return cinemaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CinemaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CinemaRepository>(value),
    );
  }
}

String _$cinemaRepositoryHash() => r'be2b0974a9469f822daed013dcbea01135293303';

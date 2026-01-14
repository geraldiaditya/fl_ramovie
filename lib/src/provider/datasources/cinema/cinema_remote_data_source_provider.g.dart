// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cinema_remote_data_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(cinemaRemoteDataSource)
const cinemaRemoteDataSourceProvider = CinemaRemoteDataSourceProvider._();

final class CinemaRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          CinemaRemoteDataSource,
          CinemaRemoteDataSource,
          CinemaRemoteDataSource
        >
    with $Provider<CinemaRemoteDataSource> {
  const CinemaRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cinemaRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cinemaRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<CinemaRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CinemaRemoteDataSource create(Ref ref) {
    return cinemaRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CinemaRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CinemaRemoteDataSource>(value),
    );
  }
}

String _$cinemaRemoteDataSourceHash() =>
    r'1569bcbe11f14a6bde5f3db2b6679b6b18563529';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_remote_data_source_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(movieRemoteDataSource)
const movieRemoteDataSourceProvider = MovieRemoteDataSourceProvider._();

final class MovieRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          MovieRemoteDataSource,
          MovieRemoteDataSource,
          MovieRemoteDataSource
        >
    with $Provider<MovieRemoteDataSource> {
  const MovieRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<MovieRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MovieRemoteDataSource create(Ref ref) {
    return movieRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieRemoteDataSource>(value),
    );
  }
}

String _$movieRemoteDataSourceHash() =>
    r'161240434be9b4a6478177d63d1f5db5e08797e4';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(movieRepository)
const movieRepositoryProvider = MovieRepositoryProvider._();

final class MovieRepositoryProvider
    extends
        $FunctionalProvider<MovieRepository, MovieRepository, MovieRepository>
    with $Provider<MovieRepository> {
  const MovieRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieRepositoryHash();

  @$internal
  @override
  $ProviderElement<MovieRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  MovieRepository create(Ref ref) {
    return movieRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MovieRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MovieRepository>(value),
    );
  }
}

String _$movieRepositoryHash() => r'5282e202a615cd91143bb1bb4b18c70cb4d6ca9d';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getMovies)
const getMoviesProvider = GetMoviesProvider._();

final class GetMoviesProvider
    extends $FunctionalProvider<GetMovies, GetMovies, GetMovies>
    with $Provider<GetMovies> {
  const GetMoviesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getMoviesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getMoviesHash();

  @$internal
  @override
  $ProviderElement<GetMovies> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetMovies create(Ref ref) {
    return getMovies(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetMovies value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetMovies>(value),
    );
  }
}

String _$getMoviesHash() => r'd6208e4392e6dca5af2915cddd0ff2110eea1637';

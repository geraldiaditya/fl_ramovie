// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MovieList)
const movieListProvider = MovieListProvider._();

final class MovieListProvider
    extends $AsyncNotifierProvider<MovieList, List<MovieModel>> {
  const MovieListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieListHash();

  @$internal
  @override
  MovieList create() => MovieList();
}

String _$movieListHash() => r'65d6d208d56ee6a9b7dd93e0af5c34ce9c7f3709';

abstract class _$MovieList extends $AsyncNotifier<List<MovieModel>> {
  FutureOr<List<MovieModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<MovieModel>>, List<MovieModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<MovieModel>>, List<MovieModel>>,
              AsyncValue<List<MovieModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_list_movie_categories.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getListMovieCategories)
const getListMovieCategoriesProvider = GetListMovieCategoriesProvider._();

final class GetListMovieCategoriesProvider
    extends
        $FunctionalProvider<
          GetListMovieCategories,
          GetListMovieCategories,
          GetListMovieCategories
        >
    with $Provider<GetListMovieCategories> {
  const GetListMovieCategoriesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getListMovieCategoriesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getListMovieCategoriesHash();

  @$internal
  @override
  $ProviderElement<GetListMovieCategories> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetListMovieCategories create(Ref ref) {
    return getListMovieCategories(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetListMovieCategories value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetListMovieCategories>(value),
    );
  }
}

String _$getListMovieCategoriesHash() =>
    r'ce21fa2b3a45fcdf486a60c1d4191065f2803c46';

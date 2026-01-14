// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CategoryList)
const categoryListProvider = CategoryListProvider._();

final class CategoryListProvider
    extends $AsyncNotifierProvider<CategoryList, List<MovieCategory>> {
  const CategoryListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'categoryListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$categoryListHash();

  @$internal
  @override
  CategoryList create() => CategoryList();
}

String _$categoryListHash() => r'9626eedce3c7602aefd5afacececf2febae5580a';

abstract class _$CategoryList extends $AsyncNotifier<List<MovieCategory>> {
  FutureOr<List<MovieCategory>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<MovieCategory>>, List<MovieCategory>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<MovieCategory>>, List<MovieCategory>>,
              AsyncValue<List<MovieCategory>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

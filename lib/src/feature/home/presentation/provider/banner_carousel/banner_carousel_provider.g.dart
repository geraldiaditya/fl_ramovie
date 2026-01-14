// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_carousel_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BannerCarousel)
const bannerCarouselProvider = BannerCarouselProvider._();

final class BannerCarouselProvider
    extends $AsyncNotifierProvider<BannerCarousel, List<BannerModel>> {
  const BannerCarouselProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bannerCarouselProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bannerCarouselHash();

  @$internal
  @override
  BannerCarousel create() => BannerCarousel();
}

String _$bannerCarouselHash() => r'e23f762b11029ca9e44b4d05f485d6f3479929c2';

abstract class _$BannerCarousel extends $AsyncNotifier<List<BannerModel>> {
  FutureOr<List<BannerModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<BannerModel>>, List<BannerModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<BannerModel>>, List<BannerModel>>,
              AsyncValue<List<BannerModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

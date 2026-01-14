// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_banner_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(getBanner)
const getBannerProvider = GetBannerProvider._();

final class GetBannerProvider
    extends $FunctionalProvider<GetBanner, GetBanner, GetBanner>
    with $Provider<GetBanner> {
  const GetBannerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBannerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBannerHash();

  @$internal
  @override
  $ProviderElement<GetBanner> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetBanner create(Ref ref) {
    return getBanner(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBanner value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBanner>(value),
    );
  }
}

String _$getBannerHash() => r'ce5ef2cf2063ca35a4a62ffb3c9c194b386bd197';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(IsAuth)
const isAuthProvider = IsAuthProvider._();

final class IsAuthProvider extends $AsyncNotifierProvider<IsAuth, bool> {
  const IsAuthProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'isAuthProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$isAuthHash();

  @$internal
  @override
  IsAuth create() => IsAuth();
}

String _$isAuthHash() => r'328170c8b500a6114c21c9c5708294edf2130375';

abstract class _$IsAuth extends $AsyncNotifier<bool> {
  FutureOr<bool> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

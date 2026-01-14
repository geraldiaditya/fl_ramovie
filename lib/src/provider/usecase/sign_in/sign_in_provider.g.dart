// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_in_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(signIn)
const signInProvider = SignInProvider._();

final class SignInProvider extends $FunctionalProvider<SignIn, SignIn, SignIn>
    with $Provider<SignIn> {
  const SignInProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'signInProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$signInHash();

  @$internal
  @override
  $ProviderElement<SignIn> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignIn create(Ref ref) {
    return signIn(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignIn value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignIn>(value),
    );
  }
}

String _$signInHash() => r'05d548c93728db5ec6404bfacd755085ee0f29a2';

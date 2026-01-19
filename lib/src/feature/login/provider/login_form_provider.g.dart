// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_form_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginForm)
const loginFormProvider = LoginFormProvider._();

final class LoginFormProvider extends $AsyncNotifierProvider<LoginForm, void> {
  const LoginFormProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginFormProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginFormHash();

  @$internal
  @override
  LoginForm create() => LoginForm();
}

String _$loginFormHash() => r'f8d5aa902e28e80126c2f7f64cf38eeac3b0087e';

abstract class _$LoginForm extends $AsyncNotifier<void> {
  FutureOr<void> build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

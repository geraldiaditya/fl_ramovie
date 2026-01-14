import 'package:flutter/cupertino.dart';

import 'package:ra_movie/src/provider/auth/auth_provider.dart';

import 'package:ra_movie/src/provider/usecase/sign_in/sign_in_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_form_provider.g.dart';

@riverpod
class LoginForm extends _$LoginForm {
  final formKey = GlobalKey<FormState>();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  FutureOr<void> build() async {
    ref.onDispose(() {
      usernameController.dispose();
      passwordController.dispose();
    });
    return;
  }

  Future<void> submit() async {
    final isValid = (formKey.currentState?.validate() ?? false);
    if (!isValid) {
      state = AsyncValue.error("Something Wrong", StackTrace.current);

      return;
    }
    state = AsyncValue.loading();

    final uc = ref.read(signInProvider);
    state = await AsyncValue.guard(() async {
      final _ = await uc.call(
        usernameController.text,
        passwordController.text,
      );
      final isAuth = ref.read(isAuthProvider.notifier);
      isAuth.doLogin();
      return;
    });
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:ra_movie/src/domain/model/register_param.dart';
import 'package:ra_movie/src/provider/usecase/register/register_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'register_form_provider.g.dart';

@riverpod
class RegisterForm extends _$RegisterForm {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  FutureOr<bool> build() async {
    ref.onDispose(() {
      fullNameController.dispose();
      emailController.dispose();
      passwordController.dispose();
      confirmPasswordController.dispose();
    });
    return false;
  }

  Future<void> submit() async {
    final isValid = formKey.currentState?.validate() ?? false;
    if (!isValid) {
      state = AsyncValue.error("Something Wrong", StackTrace.current);
      return;
    }
    state = AsyncLoading();
    final uc = ref.read(registerProvider);
    try {
      final _ = await uc.call(
        RegisterParam(
          fullName: fullNameController.text,
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
        ),
      );
      state = AsyncValue.data(true);
    } catch (e) {
      String msg = e.toString();
      if (e is DioException) {
        msg = e.error.toString();
      }
      state = AsyncValue.error(msg, StackTrace.current);
    }
  }
}

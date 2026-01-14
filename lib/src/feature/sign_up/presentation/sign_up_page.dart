import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/core/route/ratix_router.dart';
import 'package:ra_movie/src/feature/sign_up/provider/register_form_provider.dart';

class SignUpPage extends ConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rf = ref.read(registerFormProvider.notifier);
    final state = ref.watch(registerFormProvider);
    final tx = context.txTheme();
    ref.listen<AsyncValue<bool>>(registerFormProvider, (previous, next) {
      next.whenOrNull(
        error: (error, stackTrace) {
          // Pastikan ini error baru, bukan error lama yang terbawa
          if (previous?.hasError == false || previous?.error != error) {
            context.showSnackBar(
              title: "Failed",
              message: error.toString(),
              isSuccess: false,
            );
          }
        },
        data: (success) {
          // Pastikan suksesnya true dan baru saja terjadi
          if (success && (previous?.value != true)) {
            context.showSnackBar(title: "Success", message: "Register success");
          }
        },
      );
    });
    return Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 4.h,
          children: [
            Flexible(
              child: Form(
                key: rf.formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Column(
                    crossAxisAlignment: .stretch,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 24.h,
                    children: [
                      Text(
                        "Create Your Account",
                        style: tx.titleLarge,
                        textAlign: TextAlign.center,
                      ),
                      TextFormField(
                        controller: rf.fullNameController,
                        decoration: InputDecoration(
                          labelText: "Full Name",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter your fullname",
                        ),
                      ),
                      TextFormField(
                        controller: rf.emailController,
                        decoration: InputDecoration(
                          labelText: "Email",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter your email",
                        ),
                      ),
                      TextFormField(
                        controller: rf.passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter your password",
                        ),
                      ),
                      TextFormField(
                        controller: rf.confirmPasswordController,
                        obscureText: true,
                        validator: (value) {
                          if (value == null) {
                            return "Required";
                          }
                          if (!rf.passwordController.text.contains(value)) {
                            return "Password not match";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.visibility_off),
                          ),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          hintText: "Enter your Confirmation Password",
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await rf.submit();
                        },
                        child: Text("Register"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: tx.bodyMedium),
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

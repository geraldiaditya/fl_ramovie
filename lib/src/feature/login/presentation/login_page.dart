import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/src/core/constants/style_const.dart';
import 'package:ra_movie/src/core/extensions/context_extension.dart';
import 'package:ra_movie/src/core/route/ratix_router.dart';
import 'package:ra_movie/src/core/validator/app_validator.dart';
import 'package:ra_movie/src/feature/login/provider/login_form_provider.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tx = context.txTheme();
    final cs = context.cs();
    final notifier = ref.read(loginFormProvider.notifier);
    final formState = ref.watch(loginFormProvider);
    final isLoading = formState.isLoading;
    final size = MediaQuery.of(context).size;
    ref.listen(loginFormProvider, (previous, next) {
      if (next.hasError) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next.error.toString()),
            backgroundColor: Colors.red,
          ),
        );
      }
    });
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            IgnorePointer(
              ignoring: isLoading,
              child: Container(
                padding: EdgeInsets.all(kDefaultPadding),
                child: Form(
                  key: notifier.formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    spacing: 8.h,
                    children: [
                      SizedBox(
                        width: size.width,
                        child: Column(
                          children: [
                            SizedBox(
                              height: size.height * 0.2,
                              child: Image.asset(
                                "assets/images/logo.png",
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                            Text("Welcome Back!", style: tx.titleLarge),
                            Text(
                              'Log in to book your next movie experience',
                              style: tx.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                        ),
                        child: TextFormField(
                          controller: notifier.usernameController,
                          enabled: !isLoading,
                          decoration: InputDecoration(
                            filled: isLoading,

                            labelText: "Username",
                          ),
                          validator: AppValidator.required,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: kDefaultPadding,
                        ),
                        child: TextFormField(
                          obscureText: true,
                          controller: notifier.passwordController,
                          enabled: !isLoading,
                          decoration: InputDecoration(
                            filled: isLoading,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                kDefaultBorderRadius,
                              ),
                            ),
                            labelText: "Password",
                          ),
                          validator: AppValidator.required,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          child: Text("Forgot Password?"),
                          onPressed: () {},
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (notifier.formKey.currentState?.validate() ??
                              false) {
                            notifier.submit();
                          }
                        },
                        child: isLoading
                            ? CircularProgressIndicator(
                                backgroundColor: cs.onPrimary,
                              )
                            : Text("Login"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?", style: tx.bodyMedium),
                          TextButton(
                            onPressed: () {
                              SignUpRoute().push(context);
                            },
                            child: Text("Sign up"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (isLoading)
              Align(alignment: Alignment.topCenter, child: SizedBox(height: 0)),
          ],
        ),
      ),
    );
  }
}

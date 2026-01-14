
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ra_movie/l10n/arb/app_localizations.dart';
import 'package:ra_movie/src/core/theme/theme.dart';
import 'package:ra_movie/src/feature/login/presentation/login_page.dart';
import 'package:ra_movie/src/provider/router/router_provider.dart';


class RaMovieApp extends ConsumerWidget {
  const RaMovieApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return ScreenUtilInit(
      splitScreenMode: false,
      minTextAdapt: true,
      builder: (context, child) {
        final rTheme = RatixTheme.initialized();
        return MaterialApp.router(
          routerConfig: router,
          title: 'Ratix',
          debugShowCheckedModeBanner: false,
          theme: rTheme.light(),
          darkTheme: rTheme.dark(),
          themeMode: ThemeMode.dark,
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
      child: LoginPage(),
    );
  }
}

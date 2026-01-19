import 'package:go_router/go_router.dart';
import 'package:ra_movie/src/core/route/ratix_router.dart';
import 'package:ra_movie/src/provider/auth/auth_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_provider.g.dart';

@riverpod
GoRouter router(Ref ref) {
  final isLogged = ref.watch(isAuthProvider).value ?? false;

  return GoRouter(
    routes: $appRoutes,
    initialLocation: '/splash',
    debugLogDiagnostics: true,
    redirect: (context, state) {
      final loggingIn = state.matchedLocation == '/login';
      final signingUp = state.matchedLocation == '/signup';
      final onSplash = state.matchedLocation == '/splash';
      // --- User BELUM login ---
      if (!isLogged) {
        if (loggingIn || signingUp) {
          return null;
        }
        return '/login';
      }
      if (loggingIn || signingUp) {
        return '/';
      }
      if(onSplash) {
        return '/';
      }
      return null;
    },
  );
}

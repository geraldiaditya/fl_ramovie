import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ra_movie/src/feature/cinema/presentation/cinema_page.dart';
import 'package:ra_movie/src/feature/dashboard/presentation/dashboard_shell.dart';
import 'package:ra_movie/src/feature/home/presentation/home_page.dart';
import 'package:ra_movie/src/feature/login/presentation/login_page.dart';
import 'package:ra_movie/src/feature/my_ticket/presentation/my_ticket_page.dart';
import 'package:ra_movie/src/feature/profile/presentation/profile_page.dart';
import 'package:ra_movie/src/feature/sign_up/presentation/sign_up_page.dart';
import 'package:ra_movie/src/feature/splash/presentation/splash_page.dart';

part 'ratix_router.g.dart';

part 'dashboard_router.dart';

final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<LoginRoute>(path: '/login')
@immutable
class LoginRoute extends GoRouteData with $LoginRoute {
  @override
  Widget build(BuildContext context, GoRouterState state) => LoginPage();
}

@TypedGoRoute<SplashRoute>(path: '/splash')
@immutable
class SplashRoute extends GoRouteData with $SplashRoute {
  SplashRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SplashPage();
}

@TypedGoRoute<SignUpRoute>(path: '/signup')
@immutable
class SignUpRoute extends GoRouteData with $SignUpRoute {
  SignUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => SignUpPage();
}

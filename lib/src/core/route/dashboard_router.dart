part of 'ratix_router.dart';
@TypedShellRoute<DashboardShellData>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<HomeRouteData>(path: '/'),
    TypedGoRoute<TicketRouteData>(path: '/ticket'),
    TypedGoRoute<CinemaRouteData>(path: '/cinema'),
    TypedGoRoute<ProfileRouteData>(path: '/profile'),
  ],
)
class DashboardShellData extends ShellRouteData {
  DashboardShellData();

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  @override
  Widget builder(BuildContext context, GoRouterState state, Widget navigator) {
    return DashboardShell(child: navigator);
  }
}

class HomeRouteData extends GoRouteData with $HomeRouteData {
  HomeRouteData();

  @override
  Page<Function> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: HomePage());
  }

}

class TicketRouteData extends GoRouteData with $TicketRouteData {
  TicketRouteData();

  @override
  Page<Function> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: MyTicketPage());
  }

}

class CinemaRouteData extends GoRouteData with $CinemaRouteData {
  CinemaRouteData();

  @override
  Page<Function> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: CinemaPage());
  }
}

class ProfileRouteData extends GoRouteData with $ProfileRouteData {
  ProfileRouteData();

  @override
  Page<Function> buildPage(BuildContext context, GoRouterState state) {
    return NoTransitionPage(child: ProfilePage());
  }
}

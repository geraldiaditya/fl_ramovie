import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:ra_movie/src/core/constants/menu_dashboard.dart';

class DashboardShell extends ConsumerWidget {
  final Widget child;

  List<MenuDashboard> get menus => MenuDashboard.values;

  const DashboardShell({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loc = GoRouterState.of(context).uri.path;
    final currIndex = menus
        .firstWhere((element) => element.location == loc)
        .index;
    void onItemSelected(int index) {
      final path = menus.firstWhere((element) => element.value == index);
      context.go(path.location);
    }

    return Scaffold(
      body: SafeArea(
        child: Row(children: [Expanded(child: child)]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: menus
            .map(
              (e) =>
                  BottomNavigationBarItem(icon: Icon(e.icon), label: e.label),
            )
            .toList(),
        currentIndex: currIndex,
        onTap: onItemSelected,
      ),
    );
  }
}

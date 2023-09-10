import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'screens/home/home_screen.dart';
import 'theme.dart';
import 'widgets/navigation_menu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = GoRouter(initialLocation: "/home", routes: [
    ShellRoute(
        builder: (BuildContext context, GoRouterState state, child) {
          final sitemapPage = NavigationMenu.sitemap
              .firstWhere((element) => element['path'] == state.fullPath);
          final int siteMapIdx = sitemapPage['index'] ?? 0;
          return Scaffold(
              body: Row(mainAxisSize: MainAxisSize.max, children: [
            NavigationMenu(selectedIndex: siteMapIdx),
            const VerticalDivider(width: 2),
            Expanded(child: child)
          ]));
        },
        routes: NavigationMenu.sitemap
            .map((Map<String, dynamic> e) => GoRoute(
                path: e['path'], builder: (context, state) => e['widget']))
            .toList())
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}

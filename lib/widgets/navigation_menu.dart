import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  static final List<Map<String, dynamic>> sitemap = [
    {
      "index": 0,
      "path": "/home",
      "icon": Icons.home,
      "label": "Dashboard",
      "widget": Container()
    },
  ];

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

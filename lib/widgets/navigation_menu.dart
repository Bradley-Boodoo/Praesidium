import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:praesidium/screens/dashboard/view.dart';
import 'package:praesidium/screens/home/home_screen.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;


  static final List<Map<String, dynamic>> sitemap = [
    {
      "index": 0,
      "path": "/dashboard",
      "icon": Icons.dashboard_outlined,
      "label": "Dashboard",
      "widget": DashboardPage()
    },
    {
      "index": 1,
      "path": "/projects",
      "icon": Icons.work_history_outlined,
      "label": "Projects",
      "widget": HomeScreen()
    },
    {
      "index": 3,
      "path": "/stages",
      "icon": Icons.do_not_step_outlined,
      "label": "Stages",
      "widget": Container()
    },
    {
      "index": 4,
      "path": "/tasks",
      "icon": Icons.task_outlined,
      "label": "Tasks",
      "widget": Container()
    },
    {
      "index": 5,
      "path": "/risks",
      "icon": Icons.dangerous_outlined,
      "label": "Risks",
      "widget": Container()
    },
    {
      "index": 6,
      "path": "/risks",
      "icon": Icons.logout_outlined,
      "label": "Logout",
      "widget": Container()
    },
  ];

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  bool isExpanded = false;


  @override
  Widget build(BuildContext context) {

    return NavigationRail(
      // leading: const Placeholder(),
      trailing: Expanded(
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isExpanded = !isExpanded;
                });
              },
              icon: Icon(isExpanded
                  ? Icons.keyboard_double_arrow_left
                  : Icons.keyboard_double_arrow_right),
            ),
          ),
        ),
      ),
      extended: isExpanded,
      labelType: NavigationRailLabelType.none,
      selectedIndex: widget.selectedIndex,
      selectedLabelTextStyle:
      TextStyle(color: Theme.of(context).colorScheme.primary),
      onDestinationSelected: (index) async{
        if (index < NavigationMenu.sitemap.length-1){
          Map<String, dynamic> navMap = NavigationMenu.sitemap
              .firstWhere((element) => element['index'] == index);
          context.go(navMap['path']);
        } else {
          final shouldExit = await exitConfirmDialog(context);
          if (shouldExit!= null && shouldExit==true){
            debugPrint("LOGOUT");
          }
        }
      },
      useIndicator: true,
      destinations: NavigationMenu.sitemap
          .map((Map<String, dynamic> e) => NavigationRailDestination(
        icon: Icon(e['icon'] as IconData?),
        label: Text(e['label'], textAlign: TextAlign.center),
      ))
          .toList(),
    );
  }

  Future<bool?> exitConfirmDialog(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Exit website builder?'),
        content:
        const Text('Are you sure you want to exit the website builder?'),
        actions: <Widget>[
          TextButton(
            child: const Text('No, stay'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
          FilledButton(
            child: const Text('Yes, Exit'),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      ),
    );
  }
}

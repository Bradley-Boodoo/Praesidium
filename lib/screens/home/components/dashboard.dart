import 'package:flutter/material.dart';
import 'package:praesidium/theme.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required this.dashboardWidth});

  final double dashboardWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kAccentColor,
      width: dashboardWidth,
      child: Column(
        children: [
          const Text("Dashboard"),
          const Text("Project"),
          const Text("Project Description"),

          /* PROJECT STAGES */
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Project Stages")),
          ),

          /* PROJECT TASKS */
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Project Tasks")),
          ),

          /* PROJECT RISKS */
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {}, child: const Text("Project Risks")),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'components/dashboard.dart';
import 'components/projects_header.dart';
import 'components/table_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String title = "Praesidium";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;

    double dashboardWidth = width * 0.25;
    double detailsWidth = width - dashboardWidth;
    double searchbarWidth = detailsWidth * 0.5;
    double tableColumnWidth = detailsWidth * 0.3;

    double whitespaceHeight = 10;

    return Scaffold(
      /* APPBAR */
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text(title)),
      ),
      body: SizedBox(
        height: height,
        width: width,
        child: Row(
          children: [
            /* DASHBOARD */
            Dashboard(dashboardWidth: dashboardWidth),

            /* PROJECTS */
            Container(
              width: detailsWidth,
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    // Projects Header
                    ProjectsHeader(searchbarWidth: searchbarWidth),

                    // Space
                    SizedBox(height: whitespaceHeight),

                    // Add New Project
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text("Add New"),
                        ),
                      ],
                    ),

                    // Space
                    SizedBox(height: whitespaceHeight),

                    // Table Header
                    TableHeader(tableColumnWidth: tableColumnWidth),

                    // Table List
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                color: Colors.pink,
                                width: tableColumnWidth,
                                child: const Text("Project Name"),
                              ),
                              Container(
                                color: Colors.white,
                                width: tableColumnWidth,
                                child: Text("Start"),
                              ),
                              Container(
                                color: Colors.green,
                                width: tableColumnWidth,
                                child: Text("End"),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

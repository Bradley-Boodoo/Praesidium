import 'package:flutter/material.dart';

class ProjectsTable extends StatefulWidget {
  final double tableColumnWidth;

  const ProjectsTable({super.key, required this.tableColumnWidth});

  @override
  State<ProjectsTable> createState() => _TableState();
}

class _TableState extends State<ProjectsTable> {
  List<bool> isHoverList = List.generate(5, (_) => false);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          /* HEADINGS */
          Container(
            height: 25,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: widget.tableColumnWidth,
                  child: Text(
                    "Project Name",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  width: widget.tableColumnWidth,
                  child: Text(
                    "Start Date",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                SizedBox(
                  width: widget.tableColumnWidth,
                  child: Text(
                    "End Date",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
              ],
            ),
          ),

          // CONTENT
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return MouseRegion(
                  onHover: (event) {
                    setState(() {
                      isHoverList[index] = true;
                    });
                  },
                  onExit: (event) {
                    setState(() {
                      isHoverList[index] = false;
                    });
                  },
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      // Hover Styling
                      decoration: BoxDecoration(
                        color: isHoverList[index]
                            ? Theme.of(context).colorScheme.secondary
                            : Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(10),
                      ),

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: widget.tableColumnWidth,
                            child: const Text("Build SAPA"),
                          ),
                          SizedBox(
                            width: widget.tableColumnWidth,
                            child: const Text("11th September 2023"),
                          ),
                          SizedBox(
                            width: widget.tableColumnWidth,
                            child: const Text("20th April 2024"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

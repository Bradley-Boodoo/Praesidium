import 'package:flutter/material.dart';

class ProjectsHeader extends StatelessWidget {
  const ProjectsHeader({
    super.key,
    required this.searchbarHeight,
    required this.searchbarWidth,
  });

  final double searchbarHeight, searchbarWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Title
        Text(
          "Project",
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(color: Colors.black, fontSize: 20),
        ),

        // Space
        const SizedBox(width: 20),

        // Search
        Flexible(
          child: Container(
            height: searchbarHeight,
            width: searchbarWidth,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: TextField(
                onChanged: (query) {},
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
        ),

        Expanded(child: Container()), Expanded(child: Container()),

        // Add New Project
        ElevatedButton(onPressed: () {}, child: const Text("Add New")),
      ],
    );
  }
}

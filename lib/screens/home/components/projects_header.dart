import 'package:flutter/material.dart';

class ProjectsHeader extends StatelessWidget {
  const ProjectsHeader({
    super.key,
    required this.searchbarWidth,
  });

  final double searchbarWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Title
        const Text("Project"),

        // Space
        const SizedBox(width: 20),

        // Search
        Flexible(
          child: Container(
            width: searchbarWidth,
            decoration: BoxDecoration(
              color: Colors.white,
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
      ],
    );
  }
}

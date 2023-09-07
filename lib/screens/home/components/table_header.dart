import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
    required this.tableColumnWidth,
  });

  final double tableColumnWidth;

  @override
  Widget build(BuildContext context) {
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
  }
}

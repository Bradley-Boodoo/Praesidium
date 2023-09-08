import 'package:flutter/material.dart';

import '../../../theme.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
    required this.tableColumnWidth,
  });

  final double tableColumnWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: tableColumnWidth, child: const Text("Project Name")),
          SizedBox(width: tableColumnWidth, child: const Text("Start Date")),
          SizedBox(width: tableColumnWidth, child: const Text("End Date")),
        ],
      ),
    );
  }
}

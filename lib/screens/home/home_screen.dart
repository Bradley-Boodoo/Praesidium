import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_cubit/home_cubit.dart';

import 'components/projects_header.dart';
import 'components/projects_table.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeCubit(),
      child: const HomeBody(),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  final String title = "Praesidium";

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double dashboardWidth = width * 0.25;
    double detailsWidth = width - dashboardWidth;

    double searchbarHeight = 30;
    double searchbarWidth = detailsWidth * 0.4;

    double tableColumnWidth = detailsWidth * 0.3;

    double whitespaceHeight = 10;

    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              // Projects Header
              ProjectsHeader(
                searchbarHeight: searchbarHeight,
                searchbarWidth: searchbarWidth,
              ),

              // Space
              SizedBox(height: whitespaceHeight),

              // Table
              ProjectsTable(tableColumnWidth: tableColumnWidth),
            ],
          ),
        );
      },
    );
  }
}

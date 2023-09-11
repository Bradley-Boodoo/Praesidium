import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';
import 'event.dart';
import 'state.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => DashboardBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<DashboardBloc>(context);

    return BlocConsumer<DashboardBloc, DashboardState>(
        builder: (context, state) {
          if (state is DashboardSuccessState) {
            final data = state.data;

            return Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Theme.of(context).colorScheme.primary,
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          width: MediaQuery.of(context).size.width / 4,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data['dashboard_card'][0]['panel_title'],
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                data['dashboard_card'][0]['panel_value'],
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Theme.of(context).colorScheme.secondary,
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          width: MediaQuery.of(context).size.width / 4,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data['dashboard_card'][1]['panel_title'],
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                data['dashboard_card'][1]['panel_value'],
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Theme.of(context).colorScheme.tertiary,
                        child: Container(
                          padding: const EdgeInsets.all(24),
                          width: MediaQuery.of(context).size.width / 4,
                          height: 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                data['dashboard_card'][2]['panel_title'],
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                              Text(
                                data['dashboard_card'][2]['panel_value'],
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // LineChart(
                //   LineChartData(
                //     gridData: const FlGridData(show: false),
                //     titlesData: const FlTitlesData(show: false),
                //     borderData: FlBorderData(
                //       show: true,
                //       border: Border.all(
                //         color: const Color(0xff37434d),
                //         width: 1,
                //       ),
                //     ),
                //     minX: 0,
                //     maxX: data.length.toDouble() - 1,
                //     minY: 0,
                //     maxY: 350,
                //     lineBarsData: [
                //       LineChartBarData(
                //         spots: [
                //           FlSpot(0, 3),
                //           FlSpot(1, 1),
                //           FlSpot(2, 4),
                //           FlSpot(3, 2),
                //           FlSpot(4, 5),
                //           FlSpot(5, 3),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
              ],
            );
          }
          if (state is DashboardLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        listener: (BuildContext context, DashboardState state) {});
  }
}

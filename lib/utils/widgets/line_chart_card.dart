import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/data/line_chart_data.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Cumulative Returns vs Benchmark",
            style: TextStyle(fontSize: 14),
          ),
        ),
        AspectRatio(
          aspectRatio: 16 / 6,
          child: LineChart(
            LineChartData(
              lineTouchData: LineTouchData(handleBuiltInTouches: true),
              gridData: FlGridData(show: false),
              titlesData: FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                // bottomTitles: AxisTitles(
                //   sideTitles: SideTitles(
                //     showTitles: true,
                //     getTitlesWidget: (value, meta) {
                //       if (value % 1 == 0 &&
                //           value ~/ 1 < data.bottomTitle.length) {
                //         return Text(
                //           data.bottomTitle[value.toInt()],
                //           style: TextStyle(color: Colors.white54, fontSize: 10),
                //         );
                //       }
                //       return SizedBox.shrink();
                //     },
                //     interval: 1,
                //   ),
                // ),
                // leftTitles: AxisTitles(
                //   sideTitles: SideTitles(
                //     showTitles: true,
                //     reservedSize: 40,
                //     getTitlesWidget: (value, meta) {
                //       if (value % 1 == 0 &&
                //           value ~/ 1 < data.leftTitle.length) {
                //         return Text(
                //           '${data.leftTitle[value.toInt()]}%',
                //           style: TextStyle(color: Colors.white54, fontSize: 10),
                //         );
                //       }
                //       return SizedBox();
                //     },
                //     interval: 20,
                //   ),
                // ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 40,
                    getTitlesWidget: (value, meta) {
                      return Text(
                        '${value.toInt()}%',
                        style: TextStyle(color: Colors.white54, fontSize: 10),
                      );
                    },
                    interval: 20,
                  ),
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: (value, meta) {
                      const months = [
                        '2023-02',
                        '2023-04',
                        '2023-06',
                        '2023-08',
                        '2023-10',
                        '2023-12',
                      ];
                      if (value % 1 == 0 && value ~/ 1 < months.length) {
                        return Text(
                          months[value.toInt()],
                          style: TextStyle(color: Colors.white54, fontSize: 10),
                        );
                      }
                      return SizedBox.shrink();
                    },
                    interval: 1,
                  ),
                ),
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  isCurved: true,
                  color: ColorX.primaryTextColor,
                  barWidth: 2,
                  belowBarData: BarAreaData(),
                  dotData: FlDotData(show: false),
                  spots: data.spots1,
                ),
                LineChartBarData(
                  isCurved: true,
                  spots: [
                    FlSpot(0, 0),
                    FlSpot(1, -10),
                    FlSpot(2, -30),
                    FlSpot(3, 0),
                    FlSpot(4, 30),
                    FlSpot(5, 60),
                  ],
                  color: Colors.blueAccent,
                  barWidth: 3,
                  dotData: FlDotData(show: false),
                ),
              ],
              minX: 0,
              minY: 0,
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/data/line_chart_data.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    final data = LineData();

    Widget buildTimelineButton(String title) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 6),
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        decoration: BoxDecoration(
          gradient: ColorX.buttonGradient,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(title),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: Text(
                "Cumulative Returns vs Benchmark",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Row(
              children: [
                Text("Cumulative Returns"),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 20),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: ColorX.primaryTextColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Text("Benchmark"),
                Container(
                  margin: EdgeInsets.only(left: 5, right: 20),
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: ColorX.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ),
          AspectRatio(
            aspectRatio: 18 / 12,
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
                          return Transform.rotate(
                            angle: -0.7,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 10.0),
                              child: Text(
                                months[value.toInt()],
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 10,
                                ),
                              ),
                            ),
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
                    // isCurved: true,
                    color: ColorX.secondaryColor,
                    barWidth: 2,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: ColorX.secondaryGraphGradient,
                    ),
                    dotData: FlDotData(show: false),
                    spots: data.spots1,
                  ),
                  LineChartBarData(
                    spots: data.spots2,
                    color: ColorX.primaryTextColor,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: ColorX.primaryGraphGradient,
                    ),
                    barWidth: 1,
                    dotData: FlDotData(show: false),
                  ),
                ],
                minX: 0,
                minY: -80,
                maxY: 80,
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10),
              child: Text(
                '1 Year Active Returns',
                style: TextStyle(color: Colors.white54, fontSize: 14),
              ),
            ),
          ),
          Divider(thickness: 1, color: ColorX.primaryTextColor),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.leftTitle.length,
              itemBuilder:
                  (context, index) =>
                      buildTimelineButton(data.leftTitle[index]),
            ),
          ),
        ],
      ),
    );
  }
}

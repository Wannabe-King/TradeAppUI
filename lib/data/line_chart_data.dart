import 'package:fl_chart/fl_chart.dart';

class LineData {
  final spots1 = const [
    FlSpot(0, 0),
    FlSpot(1, -20),
    FlSpot(2, -40),
    FlSpot(3, -30),
    FlSpot(4, 10),
    FlSpot(5, 40),
  ];

  final spots2 = const [
    FlSpot(0, 0),
    FlSpot(1, -10),
    FlSpot(2, -30),
    FlSpot(3, 0),
    FlSpot(4, 30),
    FlSpot(5, 60),
  ];

  final leftTitle = ["1D", "1W", "1M", "6M", "1Y", "Max"];

  final bottomTitle = [
    '2023-02',
    '2023-04',
    '2023-06',
    '2023-08',
    '2023-10',
    '2023-12',
  ];
}

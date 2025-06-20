import 'package:stockportfoliodashboard/model/metric_model.dart';

class MetricData {
  final List<List<MetricModel>> data = [
    [
      MetricModel(lable: "Total Trades ", data: -10.74),
      MetricModel(lable: "Total Volume ", data: -10.74),
      MetricModel(lable: "Average Holding Period ", data: -10.74),
      MetricModel(lable: "Avg Loss/Avg Profit ", data: -10.74),
      MetricModel(lable: "Profit Factor ", data: -10.74),
    ],
    [
      MetricModel(lable: "Time in Market ", data: -10.74),
      MetricModel(lable: "Sortino ", data: -10.74),
      MetricModel(lable: "Smart Sharpe ", data: -10.74),
      MetricModel(lable: "Smart Sortino ", data: -10.74),
      MetricModel(lable: "Calmar ", data: -10.74),
    ],
    [
      MetricModel(lable: "Treynor ", data: -10.74),
      MetricModel(lable: "VaR ", data: -10.74),
      MetricModel(lable: "cVaR ", data: -10.74),
      MetricModel(lable: "Average Drawdown ", data: -10.74),
      MetricModel(lable: "Average DD length ", data: -10.74),
    ],
  ];
}

import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/model/metric_model.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';

class MetricItem extends StatelessWidget {
  final MetricModel data;

  const MetricItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 2),
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: ColorX.hueMetricColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(data.lable, style: TextStyle(color: ColorX.primaryTextColor)),
          Text(
            '(${data.data})',
            style: TextStyle(color: ColorX.secondaryTextColor),
          ),
        ],
      ),
    );
  }
}

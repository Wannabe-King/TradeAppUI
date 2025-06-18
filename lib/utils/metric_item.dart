import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';

class MetricItem extends StatelessWidget {
  final String lable;
  final String data;

  const MetricItem({super.key, required this.lable, required this.data});

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
          Text(lable, style: TextStyle(color: ColorX.primaryTextColor)),
          Text('($data)', style: TextStyle(color: ColorX.secondaryTextColor)),
        ],
      ),
    );
  }
}

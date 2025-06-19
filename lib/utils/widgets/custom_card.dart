import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';

class CustomCard extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget child;
  final double? padding;
  final double? borderRadius;
  const CustomCard({
    super.key,
    this.height,
    this.width,
    required this.child,
    this.padding,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding ?? 20),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: ColorX.hueColor,
        border: Border.all(color: ColorX.borderColor, width: 1),
        borderRadius: BorderRadius.circular(borderRadius ?? 5),
      ),
      child: child,
    );
  }
}

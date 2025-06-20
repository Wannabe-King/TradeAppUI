import 'package:flutter/material.dart';

class ActionItem extends StatelessWidget {
  final IconData icon;
  final double padding;
  final Function()? onTap;

  const ActionItem({
    super.key,
    required this.icon,
    required this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: padding),
      child: Builder(
        builder: (context) {
          return InkWell(
            onTap:
                onTap ??
                () {
                  Scaffold.of(context).openEndDrawer();
                },
            child: Icon(icon),
          );
        },
      ),
    );
  }
}

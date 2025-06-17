import 'package:flutter/material.dart';

class TopMenuOptions extends StatelessWidget {
  final Widget icon;
  final String lable;

  const TopMenuOptions({super.key, required this.icon, required this.lable});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.all(2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.amber,
      ),
      child: Row(children: [icon, Text(lable)]),
    );
  }
}

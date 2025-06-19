import 'package:flutter/material.dart';

class TopMenuModel {
  final String lable;
  final IconData icon;
  final bool selected;
  final Function()? onClick;

  const TopMenuModel({
    required this.icon,
    required this.lable,
    required this.selected,
    this.onClick,
  });
}

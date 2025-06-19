import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/model/top_menu_model.dart';

class TopMenuData {
  final topMenu = const <TopMenuModel>[
    TopMenuModel(
      icon: Icons.dashboard_rounded,
      lable: "Overview",
      selected: true,
    ),
    TopMenuModel(
      icon: Icons.dashboard_rounded,
      lable: "Return",
      selected: false,
    ),
    TopMenuModel(icon: Icons.dashboard_rounded, lable: "Risk", selected: false),
    TopMenuModel(
      icon: Icons.dashboard_rounded,
      lable: "Trade",
      selected: false,
    ),
  ];
}

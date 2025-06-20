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
      icon: Icons.swap_horizontal_circle_outlined,
      lable: "Return",
      selected: false,
    ),
    TopMenuModel(icon: Icons.shield_rounded, lable: "Risk", selected: false),
    TopMenuModel(
      icon: Icons.auto_graph_rounded,
      lable: "Trade",
      selected: false,
    ),
  ];
}

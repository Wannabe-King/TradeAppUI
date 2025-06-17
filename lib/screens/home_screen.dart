import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/utils/top_menu_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LOGO"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.notifications_none_outlined),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.blueAccent,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopMenuOptions(
                  icon: Icon(Icons.dashboard_rounded),
                  lable: "Overview",
                ),
                TopMenuOptions(
                  icon: Icon(Icons.dashboard_rounded),
                  lable: "Return",
                ),
                TopMenuOptions(
                  icon: Icon(Icons.dashboard_rounded),
                  lable: "Risk",
                ),
                TopMenuOptions(
                  icon: Icon(Icons.dashboard_rounded),
                  lable: "Trade",
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(height: 100, color: Colors.amber),
            SizedBox(height: 20),
            Row(spacing: 20, children: [Text("Period"), Text("Trading")]),
            Container(height: 100, color: Colors.amber),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Strategy"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}

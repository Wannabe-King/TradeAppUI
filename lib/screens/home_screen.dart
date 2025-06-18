import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';
import 'package:stockportfoliodashboard/utils/metric_item.dart';
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
        child: Column(
          children: [
            //Top Menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopMenuOptions(
                  selected: true,
                  icon: Icons.dashboard_rounded,
                  lable: "Overview",
                ),
                TopMenuOptions(
                  selected: false,
                  icon: Icons.dashboard_rounded,
                  lable: "Return",
                ),
                TopMenuOptions(
                  selected: false,
                  icon: Icons.dashboard_rounded,
                  lable: "Risk",
                ),
                TopMenuOptions(
                  selected: false,
                  icon: Icons.dashboard_rounded,
                  lable: "Trade",
                ),
              ],
            ),
            SizedBox(height: 20),

            //Graph Container
            Container(
              height: 100,
              decoration: BoxDecoration(
                color: ColorX.hueColor,
                border: Border.all(color: ColorX.borderColor, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(height: 20),

            Row(spacing: 20, children: [Text("Period"), Text("Trading")]),
            SizedBox(height: 10),

            // Metric Container
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: ColorX.hueColor,
                border: Border.all(color: ColorX.borderColor, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),

              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("All-time metrics"),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    padding: EdgeInsets.symmetric(vertical: 10),

                    // child: Column(
                    //   children: [
                    //     MetricItem(lable: "Total Trades ", data: '-10.74'),
                    //     MetricItem(lable: "Total Volume ", data: '-10.74'),
                    //     MetricItem(
                    //       lable: "Average Holding Period ",
                    //       data: '-10.74',
                    //     ),
                    //     MetricItem(
                    //       lable: "Avg Loss/Avg Profit ",
                    //       data: '-10.74',
                    //     ),
                    //     MetricItem(lable: "Profit Factor ", data: '-10.74'),
                    //   ],
                    // ),
                    child: Column(
                      children: [
                        MetricItem(lable: "Time in Market ", data: '-10.74'),
                        MetricItem(lable: "Sortino ", data: '-10.74'),
                        MetricItem(lable: "Smart Sharpe ", data: '-10.74'),
                        MetricItem(lable: "Smart Sortino ", data: '-10.74'),
                        MetricItem(lable: "Calmar ", data: '-10.74'),
                      ],
                    ),
                    // child: Column(
                    //   children: [
                    //     MetricItem(lable: "Treynor ", data: '-10.74'),
                    //     MetricItem(lable: "VaR ", data: '-10.74'),
                    //     MetricItem(
                    //       lable: "cVaR ",
                    //       data: '-10.74',
                    //     ),
                    //     MetricItem(
                    //       lable: "Average Drawdown ",
                    //       data: '-10.74',
                    //     ),
                    //     MetricItem(lable: "Average DD length ", data: '-10.74'),
                    //   ],
                    // ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          gradient: ColorX.buttonGradient,
                          border: Border.all(color: ColorX.borderColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          size: 15,
                          Icons.arrow_back_ios_new_outlined,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          gradient: ColorX.buttonGradient,
                          border: Border.all(color: ColorX.borderColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(size: 15, Icons.arrow_forward_ios_outlined),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: ColorX.secondaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Strategy"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}

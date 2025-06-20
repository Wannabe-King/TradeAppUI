import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/data/metric_data.dart';
import 'package:stockportfoliodashboard/data/top_menu_data.dart';
import 'package:stockportfoliodashboard/utils/constants/colors.dart';
import 'package:stockportfoliodashboard/utils/widgets/action_item.dart';
import 'package:stockportfoliodashboard/utils/widgets/custom_card.dart';
import 'package:stockportfoliodashboard/utils/widgets/line_chart_card.dart';
import 'package:stockportfoliodashboard/utils/widgets/metric_item.dart';
import 'package:stockportfoliodashboard/utils/widgets/top_menu_options.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final data = TopMenuData();
  final metricData = MetricData();
  int selectedIndex = 0;
  TopMenuOptions buildTopMenuItem(int index) {
    final isSelected = selectedIndex == index;
    final itemData = data.topMenu[index];
    return TopMenuOptions(
      icon: itemData.icon,
      lable: itemData.lable,
      selected: isSelected,
      onClick:
          () => {
            setState(() {
              selectedIndex = index;
            }),
          },
    );
  }

  Widget buildMetricContainer(int i) {
    final metrics = metricData.data[i];
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: MediaQuery.of(context).size.width * 0.6,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        itemCount: metrics.length,
        itemBuilder: (context, index) => MetricItem(data: metrics[index]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          width: 200,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(color: ColorX.backgroundColor),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomCard(
                padding: 12,
                borderRadius: 20,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 18.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 5,
                              horizontal: 6,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: ColorX.borderColor,
                                width: 2,
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(
                                    Icons.verified,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ),
                                Text(
                                  "Verified",
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 10),
                            width: 25,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Icon(Icons.person, size: 20),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Hello, Sam!",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Text(
                        "Friday, September 13",
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorX.secondaryTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Divider(thickness: 1, color: ColorX.primaryTextColor),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10,
                ),
                child: Text("MT account"),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: ColorX.buttonGradient,
                  border: Border.all(color: ColorX.borderColor),
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.symmetric(horizontal: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("548738468"),
                    Icon(Icons.keyboard_arrow_down_outlined),
                  ],
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("LOGO"),
          actions: [
            ActionItem(icon: Icons.search, padding: 20),
            ActionItem(icon: Icons.notifications_none_outlined, padding: 20),
            ActionItem(icon: Icons.menu, padding: 10),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                //Top Menu
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: data.topMenu.length,
                    itemBuilder: (context, index) => buildTopMenuItem(index),
                  ),
                ),
                SizedBox(height: 20),

                //Graph Container
                CustomCard(padding: 20, child: LineChartCard()),
                SizedBox(height: 20),

                Row(
                  spacing: 20,
                  children: [
                    Text("Period", style: TextStyle(fontSize: 16)),
                    Text("Trading", style: TextStyle(fontSize: 16)),
                  ],
                ),
                SizedBox(height: 10),

                // Metric Container
                CustomCard(
                  padding: 20,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("All-time metrics", style: TextStyle(fontSize: 16)),
                      SizedBox(
                        height: 280,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemBuilder:
                              (context, index) => buildMetricContainer(index),
                          itemCount: metricData.data.length,
                        ),
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
                            child: Icon(
                              size: 15,
                              Icons.arrow_forward_ios_outlined,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: ColorX.secondaryColor,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Dashboard"),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Strategy",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
        actions: [Icon(Icons.search),Icon(Icons.notifications_none_outlined),Icon(Icons.menu)],
      ),
      body: Column(
        
      ),
    );
  }
}

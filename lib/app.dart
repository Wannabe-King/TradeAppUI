import 'package:flutter/material.dart';
import 'package:stockportfoliodashboard/screens/home_screen.dart';
import 'package:stockportfoliodashboard/utils/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: AppThemeX.darkTheme,
      theme: AppThemeX.lightTheme,
      home: const HomeScreen(),
    );
  }
}

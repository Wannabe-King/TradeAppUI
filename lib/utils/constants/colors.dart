import 'package:flutter/rendering.dart';

class ColorX {
  ColorX._();

  //Background Colors
  static const Color backgroundColor = Color(0xFF14161B);
  static const Color primaryColor = Color(0xFF1A1B1E);
  static const Color secondaryColor = Color.fromARGB(255, 128, 124, 252);
  static const Color hueColor = Color.fromRGBO(255, 255, 255, 0.025);
  static const Color hueMetricColor = Color.fromRGBO(255, 255, 255, 0.03);
  static const Color borderColor = Color.fromRGBO(255, 255, 255, 0.06);
  static const Color borderMetricColor = Color.fromRGBO(255, 255, 255, 0.03);

  // Gradient Colors
  static const Gradient buttonGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(255, 255, 255, 0.04),
      Color.fromRGBO(255, 255, 255, 0.09),
    ],
  );

  static const Gradient primaryGraphGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromRGBO(255, 255, 255, 0.26),
      Color.fromRGBO(255, 255, 255, 0.09),
    ],
  );

  static const Gradient secondaryGraphGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color.fromARGB(87, 128, 124, 252),
      Color.fromARGB(1, 128, 124, 252),
    ],
  );

  //Text Colors
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Color(0xFF636363);
}

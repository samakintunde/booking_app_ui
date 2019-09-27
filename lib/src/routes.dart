import 'package:booking_app_ui/src/screens/landing.dart';
import 'package:booking_app_ui/src/screens/home.dart';
import 'package:flutter/material.dart';

Route routes(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(
        builder: (context) => LandingScreen(),
      );
      break;
    case "/home":
      return MaterialPageRoute(
        builder: (context) => HomeScreen(),
      );
    default:
  }
}

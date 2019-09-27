import 'package:booking_app_ui/src/routes.dart';
import 'package:booking_app_ui/src/theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        initialRoute: "/",
        onGenerateRoute: routes,
        title: "Switch",
      ),
    );

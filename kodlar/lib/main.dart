import 'package:flutter/material.dart';
import 'package:scanner/screens/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => MyAppSplashScreen(),
    },
  ));
}

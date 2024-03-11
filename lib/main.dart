import 'package:flutter/material.dart';
import 'package:startup/screens/splashscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Color(0xfff5f8ff)),
    home: SplashScreen(),
  ));
}

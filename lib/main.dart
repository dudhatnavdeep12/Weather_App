import 'package:flutter/material.dart';
import 'package:weather_api_app/screens/weather_screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      "/": (context) => WeatherScreen(),
    },
  ));
}

import 'package:flutter/material.dart';
import 'package:weather_app/SplashScreen.dart';
import 'package:weather_app/home_page.dart';

import 'Weater7Days.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      routes: {
        '/home': (context) => HomePage(),
        '/weather7': (context) => Weater7days(),
      },
    );
  }
}

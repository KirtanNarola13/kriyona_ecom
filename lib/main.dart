import 'package:flutter/material.dart';
import 'package:kriyona/screens/home_page.dart';
import 'package:kriyona/screens/splas_screens.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        'home_page': (context) => const HomePage(),
      },
    ),
  );
}

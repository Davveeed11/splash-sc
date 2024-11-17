import 'package:flutter/material.dart';
import 'package:splash_sc/pages/homepage.dart';
import 'package:splash_sc/theme/dark_mode.dart';
import 'package:splash_sc/theme/light_mode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightmode,
      darkTheme: darkMode,
      home: const HomePage(),
    );
  }
}

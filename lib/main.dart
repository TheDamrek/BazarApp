import 'package:flutter/material.dart';
import 'screens/OpeningScreen.dart';
import 'screens/login_screen.dart';
import 'screens/signup_screen.dart';
import 'screens/homepage_screen.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePageScreen(),
    );
  }
}

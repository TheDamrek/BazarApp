import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Image.asset(
          'assets/bazar.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}

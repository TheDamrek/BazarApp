import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {

     final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: Image.asset(
          'pictures/bazar.png',
            width: screenWidth * 1,
          height: screenHeight * 1,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

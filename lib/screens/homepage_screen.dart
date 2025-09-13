import 'package:flutter/material.dart';

class HomepageScreen extends StatelessWidget {
  const HomepageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to the Homepage!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
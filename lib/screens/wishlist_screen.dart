import 'package:flutter/material.dart';
import 'category_screen.dart';
import 'profile_screen.dart';
import 'bottom_nav.dart';
import 'homepage_screen.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  void _navigate(BuildContext context, int index) {
    if (index == 2) return;
    if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const CategoryScreen()),
      );
    } else if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePageScreen()),
      );
    } else if (index == 3) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          "Wishlist Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 2,
        onTap: (index) => _navigate(context, index),
      ),
    );
  }
}

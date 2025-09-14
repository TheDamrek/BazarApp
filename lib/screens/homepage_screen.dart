import 'package:flutter/material.dart';
import 'profile_screen.dart';
import 'category_screen.dart';
import 'bottom_nav.dart';
import 'wishlist_screen.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  void _navigate(BuildContext context, int index) {
    if (index == 0) return;
    if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const CategoryScreen()),
      );
    } else if (index == 2) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WishlistScreen()),
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
     body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.notifications, size: 30),
            const Text(
              "Home",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(Icons.search, size: 30),
          ],
        ),
        
     ),
      
      
      
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 0,
        onTap: (index) => _navigate(context, index),
      ),
    );
  }
}

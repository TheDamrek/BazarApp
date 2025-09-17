import 'package:flutter/material.dart';
import 'wishlist_screen.dart';
import 'profile_screen.dart';
import 'bottom_nav.dart';
import 'homepage_screen.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  void _navigate(BuildContext context, int index) {
    if (index == 1) return;
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomePageScreen()),
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
       
      
      
      
      
      
      
      
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 1,
        onTap: (index) => _navigate(context, index),
      ),
    );
  }
}

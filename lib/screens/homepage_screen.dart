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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.notifications, size: 30),
          Text(
            "Home",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.search, size: 30),
        ],
      ),


      const SizedBox(height: 20),
      Container(
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(15),
        ),
        padding: EdgeInsets.all(16),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "SPECIAL OFFER",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              "25% reduction!",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text("Buy now"
                  , style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white))
            ),
          ],
        ),
      ),
      SizedBox(width: 20),
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "pictures/resurrection.jpg",
          width: 200,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    ],
  ),
),
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

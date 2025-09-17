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


  static const List<Map<String, String>> books = [
  {"title": "Resurrection", "image": "pictures/resurrection.jpg"},
  {"title": "Finders Keepers", "image": "pictures/finders_keepers.jpg"},
  {"title": "1984", "image": "pictures/1984.jpg"},
  {"title": "Lazarus", "image": "pictures/lazarus.jpg"},
  {"title": "The Gambler", "image": "pictures/the_gambler.jpg"},
  {"title": "The Life Before Us", "image": "pictures/TLBU.jpg"},
  {"title": "Letters To Milena", "image": "pictures/LTM.jpg"},
  {"title": "Letter From An Unknown Woman", "image": "pictures/LFAUW.jpg"},
   {"title": "The Judgement", "image": "pictures/judgement.jpg"},
  {"title": "Brothers Karamazov", "image": "pictures/karamazov.jpg"},
  {"title": "Animal Farm", "image": "pictures/animal_farm.jpg"},
  {"title": "Darkly Dreaming Dexter", "image": "pictures/DDD.jpg"},
  {"title": "The Shining", "image": "pictures/shining.jpg"},
  {"title": "All THe Light We Cannot See", "image": "pictures/ATLWCS.jpg"},
  {"title": "Qu'attendent Les Singes", "image": "pictures/QALS.jpg"},
  {"title": "Mr Mercedes", "image": "pictures/Mrmercedes.jpg"},
   {"title": "Rich Dad Poor Dad", "image": "pictures/RDPD.jpg"},
  {"title": "Dieu N'habite Pas La Havane", "image": "pictures/DNPLH.jpg"},
  {"title": "Surrounded By Idiots", "image": "pictures/SBI.png"},
  {"title": "La Généalogie De La Morale", "image": "pictures/GDLM.jpg"},
  {"title": "Le Tour Du Monde En 80 Jours", "image": "pictures/LTDME80J.jpg"},
  {"title": "Tears And Saints", "image": "pictures/TAS.jpg"},
  {"title": "Le Mythe De Sissyphe", "image": "pictures/sissyphus.jpg"},
  {"title": "Supermarket", "image": "pictures/supermarket.webp"},
];

  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
  child: ListView(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.notifications, size: 30),
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Icon(Icons.search, size: 30),
        ],
      ),
      const SizedBox(height: 20),

      GridView.builder(
  shrinkWrap: true,
  physics: const NeverScrollableScrollPhysics(),
  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 3,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    childAspectRatio: 0.65,
  ),
  itemCount: 24,
  itemBuilder: (context, index) {
    return Column(
      children: [
         ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                books[index]["image"]!,
                width: 100,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              books[index]["title"]!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
      ],
    );
  },
),
    ],
      ),
      ),
      
      
      
      
      
      
      
      
      bottomNavigationBar: CustomBottomNavigation(
        currentIndex: 1,
        onTap: (index) => _navigate(context, index),
      ),
    );
  }
}

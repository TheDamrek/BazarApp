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

static const List<Map<String, String>> books = [
  {"title": "Resurrection", "image": "pictures/resurrection.jpg"},
  {"title": "Finders Keepers", "image": "pictures/finders_keepers.jpg"},
  {"title": "1984", "image": "pictures/1984.jpg"},
  {"title": "Lazarus", "image": "pictures/lazarus.jpg"},
  {"title": "The Gambler", "image": "pictures/the_gambler.jpg"},
  {"title": "The Life Before Us", "image": "pictures/TLBU.jpg"},
  {"title": "Letters To Milena", "image": "pictures/LTM.jpg"},
  {"title": "Letter From An Unknown Woman", "image": "pictures/LFAUW.jpg"},
];

static const List<Map<String, String>> authors = [
  {"name": "S.King", "image": "pictures/stephkingp.jpg"},
  {"name": "L.Andreyev", "image": "pictures/andreyev.jpg"},
  {"name": "G.Orwell", "image": "pictures/orwell.jpg"},
  {"name": "Y.Khadra", "image": "pictures/yasminakhadra.jpg"},
  {"name": "L.Tolstoi", "image": "pictures/tolstoi.webp"},
  {"name": "F.Kafka", "image": "pictures/kafka.jpg"},
  {"name": "E.Cioran", "image": "pictures/cioran.jpg"},
  {"name": "F.Dostoyevski", "image": "pictures/dostoyevsky.jpg"},
  {"name": "S.Zwieg", "image": "pictures/zwieg.jpg"},
];


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

const SizedBox(height: 30),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Books",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "See all",
        style: TextStyle(
          fontSize: 14,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),


const SizedBox(height: 20), 
SizedBox(
  height: 200,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: books.length,
    itemBuilder: (context, index) {
      return Container(
        width: 120,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
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
        ),
      );
    },
  ),
),


const SizedBox(height: 10),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 16.0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Authors",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        "See all",
        style: TextStyle(
          fontSize: 14,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  ),
),

const SizedBox(height: 15), 
SizedBox(
  height: 180,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: authors.length,
    itemBuilder: (context, index) {
      return Container(
        width: 120,
        margin: const EdgeInsets.only(right: 12),
        child: Column(
          children: [
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(authors[index]["image"]!),
  ),
            const SizedBox(height: 8),
            Text(
              authors[index]["name"]!,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      );
    },
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

import 'package:flutter/material.dart';
import 'wishlist_screen.dart';
import 'profile_screen.dart';
import 'bottom_nav.dart';
import 'homepage_screen.dart';
import 'bookdetails.dart';

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
  {
    "title": "Resurrection",
    "author": "Leo Tolstoy",
    "image": "pictures/resurrection.jpg",
    "description": "Tolstoy’s final novel tells the story of Prince Dmitri Nekhlyudov, who seeks redemption after wronging a peasant girl, exploring justice, morality, and spiritual awakening."
  },
  {
    "title": "Finders Keepers",
    "author": "Stephen King",
    "image": "pictures/finders_keepers.jpg",
    "description": "A young boy discovers a buried treasure of stolen notebooks from a murdered author, drawing him into a deadly game with a recently released convict determined to reclaim them."
  },
  {
    "title": "1984",
    "author": "George Orwell",
    "image": "pictures/1984.jpg",
    "description": "In a dystopian future, Winston Smith struggles under the oppressive surveillance of Big Brother, questioning truth and freedom in a society built on manipulation and control."
  },
  {
    "title": "Lazarus",
    "author": "Leonid Andreyev",
    "image": "pictures/lazarus.jpg",
    "description": "A haunting tale of the biblical Lazarus after his resurrection, whose presence evokes terror and dread, raising questions about life, death, and the divine."
  },
  {
    "title": "The Gambler",
    "author": "Fyodor Dostoevsky",
    "image": "pictures/the_gambler.jpg",
    "description": "Inspired by Dostoevsky’s own struggles, the novel follows Alexei, a young tutor consumed by his obsession with roulette, love, and self-destruction."
  },
  {
    "title": "The Life Before Us",
    "author": "Romain Gary (Émile Ajar)",
    "image": "pictures/TLBU.jpg",
    "description": "Momo, an orphan, grows up in the care of Madame Rosa, a Holocaust survivor and former prostitute, as they navigate love, hardship, and dignity in Paris."
  },
  {
    "title": "Letters To Milena",
    "author": "Franz Kafka",
    "image": "pictures/LTM.jpg",
    "description": "Kafka’s correspondence with Milena Jesenská reveals his inner struggles, tenderness, and self-doubt, blending passion with existential reflection."
  },
  {
    "title": "Letter From An Unknown Woman",
    "author": "Stefan Zweig",
    "image": "pictures/LFAUW.jpg",
    "description": "A famous writer receives a heartfelt letter from a woman who loved him in silence throughout her life, revealing their secret, one-sided connection."
  },
  {
    "title": "The Judgement",
    "author": "Franz Kafka",
    "image": "pictures/judgement.jpg",
    "description": "Kafka’s short story depicts a tragic confrontation between a young man and his domineering father, culminating in an act of authority and guilt."
  },
  {
    "title": "The Brothers Karamazov",
    "author": "Fyodor Dostoevsky",
    "image": "pictures/karamazov.jpg",
    "description": "A philosophical epic about faith, free will, and morality, told through the lives of the Karamazov brothers and the murder that tears their family apart."
  },
  {
    "title": "Animal Farm",
    "author": "George Orwell",
    "image": "pictures/animal_farm.jpg",
    "description": "Orwell’s allegory portrays farm animals overthrowing their human master, only to see their ideals corrupted under the tyranny of the pigs."
  },
  {
    "title": "Darkly Dreaming Dexter",
    "author": "Jeff Lindsay",
    "image": "pictures/DDD.jpg",
    "description": "Dexter Morgan, a Miami blood-spatter analyst, moonlights as a vigilante serial killer, targeting criminals while hiding his dark double life."
  },
  {
    "title": "The Shining",
    "author": "Stephen King",
    "image": "pictures/shining.jpg",
    "description": "Jack Torrance takes a caretaker job at the isolated Overlook Hotel, but sinister forces drive him into madness, threatening his family’s survival."
  },
  {
    "title": "All The Light We Cannot See",
    "author": "Anthony Doerr",
    "image": "pictures/ATLWCS.jpg",
    "description": "A blind French girl and a German soldier’s paths cross in occupied France during WWII, in a lyrical story about survival, resilience, and the unseen bonds of humanity."
  },
  {
    "title": "Qu'attendent Les Singes",
    "author": "Yasmina Khadra",
    "image": "pictures/QALS.jpg",
    "description": "A police investigation into a murdered young woman exposes the dark underbelly of Algerian society, corruption, and moral decay."
  },
  {
    "title": "Mr Mercedes",
    "author": "Stephen King",
    "image": "pictures/Mrmercedes.jpg",
    "description": "A retired detective is drawn back into action when a deranged killer taunts him after committing a mass murder with a stolen Mercedes."
  },
  {
    "title": "Rich Dad Poor Dad",
    "author": "Robert Kiyosaki",
    "image": "pictures/RDPD.jpg",
    "description": "Kiyosaki contrasts his two 'dads'—one rich, one poor—to teach lessons about money, investing, and financial independence."
  },
  {
    "title": "Dieu N'habite Pas La Havane",
    "author": "Yasmina Khadra",
    "image": "pictures/DNPLH.jpg",
    "description": "Don Fuego, an aging Cuban singer, struggles to find meaning as he confronts the end of his career, love, and life in Havana."
  },
  {
    "title": "Surrounded By Idiots",
    "author": "Thomas Erikson",
    "image": "pictures/SBI.png",
    "description": "A guide to understanding human behavior through four personality types, helping improve communication and reduce misunderstandings."
  },
  {
    "title": "La Généalogie De La Morale",
    "author": "Friedrich Nietzsche",
    "image": "pictures/GDLM.jpg",
    "description": "Nietzsche examines the origins of moral concepts, critiquing guilt, asceticism, and the tension between master and slave morality."
  },
  {
    "title": "Le Tour Du Monde En 80 Jours",
    "author": "Jules Verne",
    "image": "pictures/LTDME80J.jpg",
    "description": "Phileas Fogg wagers that he can circumnavigate the globe in just eighty days, sparking an adventurous race filled with obstacles and discoveries."
  },
  {
    "title": "Tears And Saints",
    "author": "Emil Cioran",
    "image": "pictures/TAS.jpg",
    "description": "Cioran meditates on the relationship between mysticism, suffering, and sainthood, blending philosophy with poetic despair."
  },
  {
    "title": "Le Mythe De Sisyphe",
    "author": "Albert Camus",
    "image": "pictures/sissyphus.jpg",
    "description": "Camus explores the absurdity of life, using the myth of Sisyphus as a metaphor for humanity’s search for meaning in a meaningless world."
  },
  {
    "title": "Supermarket",
    "author": "Bobby Hall (Logic)",
    "image": "pictures/supermarket.webp",
    "description": "A struggling writer takes a job at a supermarket, only to descend into paranoia and self-discovery in this genre-bending psychological thriller."
  },
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
          Icon(Icons.notifications, size: 30, color: Colors.black),
          Text(
            "Categories",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          Icon(Icons.search, size: 30, color: Colors.black),
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
  itemCount: books.length,
  itemBuilder: (context, index) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (_) => BookDetails(
            title: books[index]["title"]!,
            author: books[index]["author"]!,
            description: books[index]["description"]!,
            image: books[index]["image"]!,
          ),
        );
      },
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
)

      
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

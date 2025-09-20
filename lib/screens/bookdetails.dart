import 'package:flutter/material.dart';


class BookDetails extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String description;
  final bool isWished;
  final VoidCallback onWishToggle;

  const BookDetails({
    super.key,
    required this.title,
    required this.image,
    required this.author,
    required this.description,
    required this.isWished,
    required this.onWishToggle,
  });

   @override
  Widget build(BuildContext context) {
    return Dialog(
     insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      backgroundColor: Colors.white,
      child: Stack(
        children: [
        
          Padding(
            padding: const EdgeInsets.all(20),
            
            child: SizedBox(
               width: MediaQuery.of(context).size.width * 0.8,
               height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              
              children: [
              
                Center(
                  child: Image.asset(
                    image,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 16),

            
                Text(
                  "$title / $author",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),

                
                const SizedBox(height: 12),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          ),

          
          Positioned(
            top: 8,
            right: 8,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Icon(Icons.close, size: 24),
            ),
          ),

         Positioned(
  bottom: 20,
  left: 0,
  right: 0,
  child: GestureDetector(
    onTap: onWishToggle,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          isWished ? "Wished!" : "Make a wish!",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.pink,
            // Pink glow effect
            shadows: isWished
                ? [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.pinkAccent,
                      offset: Offset(0, 0),
                    ),
                  ]
                : [],
          ),
        ),
        const SizedBox(width: 8),
        Icon(
          isWished ? Icons.favorite : Icons.favorite_border,
          color: Colors.pink,
          size: 28,
          shadows: isWished
              ? [
                  Shadow(
                    blurRadius: 15.0,
                    color: Colors.pinkAccent,
                    offset: Offset(0, 0),
                  ),
                ]
              : [],
        ),
      ],
    ),
  ),
),


        ],
      ),
    );
    
    
  }

  
}
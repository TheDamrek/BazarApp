import 'package:flutter/material.dart';


class BookDetails extends StatelessWidget {
  final String title;
  final String image;
  final String author;
  final String description;

  const BookDetails({
    super.key,
    required this.title,
    required this.image,
    required this.author,
    required this.description,
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
        ],
      ),
    );
    
    
  }

  
}
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {

  final IconData icon;
  final String name;
  final String price;

  const ProductCard({
    super.key,

    required this.icon,
    required this.name,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
    
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
      
          Expanded(
            child: Container(
            
              color: Colors.blue.shade50,
              child: Icon(
                icon,
                size: 55,
                color: Colors.blue,
              ),
            ),
          ),
    
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
            
                Text(
                  name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
    
                const SizedBox(height: 5),
    
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
    
                const SizedBox(height: 5),
    
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 16,
                      color: Colors.orange,
                    ),
    
                    SizedBox(width: 4,),
    
                    Text("4.5")
                  ],
                ),
            
              ],
            ),
          )
      
        ],
      ),
    );
  }
}


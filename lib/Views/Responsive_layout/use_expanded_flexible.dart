import 'package:flutter/material.dart';

class UseExpandedFlexible extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Use Expanded & Flexible Screren"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
        
            // Use Expanded
            Row(
              children: [

                // Imagine you have three buttons inside a Row.
                // Without Expanded, each button takes only the width it needs.
                // With Expanded, the buttons share the available horizontal space.
                Expanded(
        
                  flex: 1,  // determines how the available space is distributed among Expanded children.
        
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: const Text("Home")
                  ),
                ),
        
                SizedBox(width: 10,),
        
                Expanded(
                  flex: 3,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: const Text("Products")
                  ),
                ),
        
                SizedBox(width: 10,),
        
        
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: const Text("Profile")
                  ),
                ),
        
              ],
            ),
            
        
            SizedBox(height: 30,),
        
        
            //  Use Flexible
            Row(
              children: [
        
                Flexible(
                  
                  fit: FlexFit.tight, // makes the child fill its allocated space, like Expanded.
        
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: const Text("Home")
                  ),
                ),
        
                SizedBox(width: 10,),
        
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: const Text("Products")
                  ),
                ),
        
                SizedBox(width: 10,),
        
        
                Flexible(
                  child: ElevatedButton(
                    onPressed: () {
                      
                    }, 
                    child: const Text("Profile")
                  ),
                ),
        
              ],
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey,
                  child: const Icon(Icons.shopping_bag),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Running Shoes',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const Text('Comfortable sports shoes'),

                      const Text(
                        '\$49.99',
                        style: TextStyle(color: Colors.green),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        
        
          ],
        ),
      ),
    );
  }
}
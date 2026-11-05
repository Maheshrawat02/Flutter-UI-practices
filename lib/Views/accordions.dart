import 'package:flutter/material.dart';

class Accordions extends StatefulWidget {
  const new({super.key});

  @override
  State<Accordions> createState() => _AccordionsState();
}

class _AccordionsState extends State<Accordions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 236, 235, 235),

      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 12
            ),
            
            child: Card(
              clipBehavior: Clip.antiAlias,

              
              child: ExpansionTile(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                
                backgroundColor: const Color.fromARGB(255, 206, 227, 238),
                collapsedBackgroundColor: Colors.white,
                leading: const Icon(Icons.shopping_bag),
                title: const Text('Product Information'),
                subtitle: const Text('View product details'),
              
                children: const [
                  ListTile(
                    title: Text('Product Name'),
                    subtitle: Text('Running Shoes'),
                  ),
                  ListTile(
                    title: Text('Brand'),
                    subtitle: Text('Nike'),
                  ),
                  ListTile(
                    title: Text('Price'),
                    subtitle: Text('Rs. 2500'),
                  ),
                  ListTile(
                    title: Text('Material'),
                    subtitle: Text('Breathable Mesh'),
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

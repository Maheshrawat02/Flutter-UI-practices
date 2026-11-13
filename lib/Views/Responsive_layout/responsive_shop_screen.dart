

import 'package:flutter/material.dart';

class ResponsiveShopScreen extends StatelessWidget {
  const ResponsiveShopScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Running Shoes',
      'price': '\$49.99',
      'icon': Icons.directions_run,
    },
    {
      'name': 'Headphones',
      'price': '\$39.99',
      'icon': Icons.headphones,
    },
    {
      'name': 'Smart Watch',
      'price': '\$59.99',
      'icon': Icons.watch,
    },
    {
      'name': 'Backpack',
      'price': '\$29.99',
      'icon': Icons.backpack,
    },
    {
      'name': 'Camera',
      'price': '\$99.99',
      'icon': Icons.camera_alt,
    },
    {
      'name': 'Sunglasses',
      'price': '\$19.99',
      'icon': Icons.visibility,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShopEase'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {

            final width = constraints.maxWidth;

            final isDesktop = width >= 1000;

            int columns;

            if (width < 600) {
              columns = 2;
            } else if (width < 1000) {
              columns = 3;
            } else if (width < 1200) {
              columns = 4;
            } else {
              columns = 5;
            }

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxWidth: 1300,
                ),

                child: Padding(
                  padding: const EdgeInsets.all(16),

                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.stretch,

                    children: [

                      // Desktop sidebar
                      if (isDesktop) ...[
                        SizedBox(
                          width: 200,
                          child: _buildSidebar(),
                        ),

                        const SizedBox(width: 20),
                      ],

                      // Main content
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,

                          children: [

                            // Search bar
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Search products...',
                                prefixIcon:
                                    const Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(12),
                                ),
                              ),
                            ),

                            const SizedBox(height: 20),

                            const Text(
                              'Popular Categories',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 12),

                            // Categories
                            SizedBox(
                              height: 45,
                              child: ListView(
                                scrollDirection:
                                    Axis.horizontal,

                                children: const [
                                  _CategoryItem(
                                    title: 'Shoes',
                                  ),
                                  _CategoryItem(
                                    title: 'Clothing',
                                  ),
                                  _CategoryItem(
                                    title: 'Electronics',
                                  ),
                                  _CategoryItem(
                                    title: 'Accessories',
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 20),

                            const Text(
                              'Featured Products',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            const SizedBox(height: 12),

                            // Responsive product grid
                            Expanded(
                              child: GridView.builder(
                                itemCount: products.length,

                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: columns,
                                  crossAxisSpacing: 15,
                                  mainAxisSpacing: 15,
                                  childAspectRatio: 0.72,
                                ),

                                itemBuilder: (context, index) {

                                  final product =
                                      products[index];

                                  return _ProductCard(
                                    name: product['name'],
                                    price: product['price'],
                                    icon: product['icon'],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildSidebar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Menu',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
        ),
        ListTile(
          leading: Icon(Icons.shopping_bag),
          title: Text('Products'),
        ),
        ListTile(
          leading: Icon(Icons.favorite),
          title: Text('Favorites'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Profile'),
        ),
      ],
    );
  }
}

// Category widget
class _CategoryItem extends StatelessWidget {
  final String title;

  const _CategoryItem({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(title),
      ),
    );
  }
}

// Product card widget
class _ProductCard extends StatelessWidget {
  final String name;
  final String price;
  final IconData icon;

  const _ProductCard({
    required this.name,
    required this.price,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          // Product image placeholder
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

          // Product information
          Padding(
            padding: const EdgeInsets.all(10),
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

                const Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text('4.5'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

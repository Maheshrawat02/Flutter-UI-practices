import 'package:flutter/material.dart';
import 'package:practice_mr/Views/Responsive_layout/Responsive_widgets/filter_widget.dart';
import 'package:practice_mr/Views/Responsive_layout/Responsive_widgets/product_card.dart';

class ResponsiveShopScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ResponsiveShopScreen> createState() => _ResponsiveShopScreenState();
}

class _ResponsiveShopScreenState extends State<ResponsiveShopScreen> {

  final List<Map<String, dynamic>> products = [

    {
      "name": "Running Shoes",
      "price": "\$49.99",
      "icon": Icons.directions_run

    },

    {
      "name": "Headphones",
      "price": "\$39.99",
      "icon": Icons.headphones

    },

    {
      "name": "Smart Watch",
      "price": "\$59.99",
      "icon": Icons.watch

    },

    {
      "name": "Backpack",
      "price": "\$29.99",
      "icon": Icons.backpack

    },

    {
      "name": "Camera",
      "price": "\$99.99",
      "icon": Icons.camera

    },

    {
      "name": "Mask",
      "price": "\$0.99",
      "icon": Icons.masks

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("ShopEase"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),

      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {

            final width = constraints.maxWidth;
            
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
                constraints: BoxConstraints(
                  maxWidth: 1300,
                ),
              
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Search products..." ,
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),

                        const Text(
                          "Popular categories",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 12,),

                        FilterWidget(),

                        SizedBox(height: 20,),


                        const Text(
                          "Featured Products",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        SizedBox(height: 12,),

                        Expanded(

                          child: GridView.builder(
                            itemCount: products.length,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: columns,
                              crossAxisSpacing: 20,
                              mainAxisSpacing: 20,
                              childAspectRatio: 0.8,
                            ), 

                            itemBuilder: (context, index) {

                              final product = products[index];

                              return ProductCard(
                                icon: product["icon"], 
                                name: product["name"], 
                                price: product["price"],
                              );

                              
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            );


          },
        ),
      ),


    );
  }
}


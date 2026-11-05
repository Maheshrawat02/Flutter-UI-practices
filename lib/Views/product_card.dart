import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageURL;
  final String title;
  final double price;
  final double rating;
  final VoidCallback onPressed;
  final Icon icon;
  final String discountTag;

  const ProductCard({
    super.key,
    required this.imageURL,
    required this.title,
    required this.price,
    required this.rating,
    required this.onPressed,
    required this.icon,
    required this.discountTag
  
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: Card(
          color: const Color.fromARGB(242, 255, 255, 255),
          elevation: 5,
          margin: const EdgeInsets.all(20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(15),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // image Section
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageURL,
                      height: 190,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),

                  Positioned(
                    top: 8,
                    right: 8,
                    child: CircleAvatar(
                      radius: 21,
                      backgroundColor: const Color.fromARGB(20, 195, 194, 194),

                      child: IconButton(
                        onPressed: onPressed,
                        icon: icon,
                      ),
                    ),
                  ),

                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 6,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Text(
                        "20% OFF",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 3),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 5),

                    Row(
                      children: [
                        Text(
                          "\$$price",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        Spacer(),

                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 18,
                        ),

                        Text(
                          " $rating",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

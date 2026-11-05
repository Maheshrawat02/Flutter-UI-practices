import 'package:flutter/material.dart';
import 'package:practice_mr/Views/product_card.dart';

class HomeView extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}



class _HomeViewState extends State<HomeView> {

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          ProductCard(
            imageURL: "https://media.zigcdn.com/media/model/2026/Mar/hunter-right-side-view_600x400.jpg", 
            title: "The Royal Enfield Hunter", 
            price: 4499.00, 
            rating: 4.5, 
            discountTag: "discountTag", 
            onPressed: () { 
              setState(() {
                isFavorite = !isFavorite;
              });
             }, 
             
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.white,
            ),
            

             
          ),
        ],
      ),
    );
  }
}


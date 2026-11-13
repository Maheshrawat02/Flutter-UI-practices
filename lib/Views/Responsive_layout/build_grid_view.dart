import 'package:flutter/material.dart';

class BuildGridView extends StatefulWidget {
  const new({super.key});

  @override
  State<BuildGridView> createState() => _BuildGridViewState();
}

class _BuildGridViewState extends State<BuildGridView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products Screen"),
      ),



      body: 
      
      // // Flutter widget that displays items in rows and columns.
      // GridView.builder(
      //   itemCount: 11,
      
      
      //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 3,
      //     crossAxisSpacing: 20,
      //     mainAxisSpacing: 20,
      //     childAspectRatio: 0.8,
      
      //   ),
      
      
      //   itemBuilder: (context, index) {
      //     return Container(
      //       color: Colors.blue,
      //       child: Center(child: Text("Product $index")),
      //     );
      //   },
      // ),



      // layoutBuilder + GridView.builder
      LayoutBuilder(
        builder: (context, constraints) {

          int columns;
          
          
          if (constraints.maxWidth < 600) {
            columns = 2;
          } else if (constraints.maxWidth < 900) {
            columns = 3;
          } else if (constraints.maxWidth < 1200) {
           columns = 4;
          } else {
            columns = 5;
          }

          return GridView.builder(
            itemCount: 20,

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: columns,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.75,
            ), 

            itemBuilder: (context, index) {
              
              return Container(
                color: Colors.grey,
                child: Center(
                  child: Text(
                    "Product ${index + 1}"),
                ),
              );
            },
          );

        },
      ),

      
    );
  }
}
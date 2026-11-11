import 'package:flutter/material.dart';

class UseLayoutBuilder extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    // MediaQuery tells you the size of the overall available screen.
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      appBar: AppBar(
        title: Text("Use LayoutBuilder Screen"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            


            // // LayoutBuilder tells you the space available at a specific position in the widget tree.
            // LayoutBuilder(
            //   builder: (context, constraints) {

                // double maxWidth = constraints.maxWidth;

                
            //     return Container(
            //       width: maxWidth * 0.8,
            //       height: 400,
            //       color: Colors.grey,
            //     );
            //   },
            // ),


            LayoutBuilder(
              builder: (context, constraints) {
                
                if (constraints.maxWidth < 600) {

                  return  Text("Mobile Layout: $screenWidth");

                } else if (constraints.maxWidth < 900) {

                  return Text("Tablet Layout: $screenWidth");

                } else {

                  return Text("Desktop Layout: $screenWidth");

                }
              },
            ),


          ],
        ),
      ),
    );
  }
}
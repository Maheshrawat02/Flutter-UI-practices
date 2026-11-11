import 'package:flutter/material.dart';

class Media7Query extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {

    // get information your current screen width 
    double screenWidth = MediaQuery.sizeOf(context).width;


    // get information your current screen height
    double screenHeight = MediaQuery.sizeOf(context).height;

    
    // get information whether current screen portrait or landscape mode
    Orientation orientation = MediaQuery.orientationOf(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Find MediaQuery Screen"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            // Display your current screen width and height 
            Text(
              "Width: $screenWidth\n"
             "Heigh: $screenHeight"
            ),
        
            SizedBox(height: 10,),

            Container(
              width: screenWidth * 0.9,  // 0.9 means 90%
              height: 150,
              color: Colors.blue,
              padding: EdgeInsets.all(20),
              child: const Text("Login"),
            ),

            SizedBox(height: 10,),
        
            //  Display your current screen either portrait or landscape mode
            orientation == Orientation.portrait
              ? const Text("Vertical Screen")
              : const Text("Horizental Screen"),
        
        
          ],
        ),
      ),
    );
  }
}
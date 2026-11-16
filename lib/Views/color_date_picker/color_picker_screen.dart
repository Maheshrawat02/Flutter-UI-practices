import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<ColorPickerScreen> createState() => _ColorPickerScreenState();
}

class _ColorPickerScreenState extends State<ColorPickerScreen> {


  Color selectedColor = Colors.blue;

  // final List<Color> availableColors = [

  //   Colors.red,
  //   Colors.black,
  //   Colors.yellow,
  //   Colors.green,
  //   Colors.blue,
  //   Colors.purple

  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Color Picker Screen"),
        backgroundColor: Colors.grey.shade300,
        foregroundColor: Colors.black,
      ),

      body: 
      
      // Padding(
        // padding: const EdgeInsets.all(20.0),
        // child: Column(
          // children: [

          //  // simple logic code for color-picker
          //   Container(
          //     width: double.infinity,
          //     height: 100,
          //     decoration: BoxDecoration(
          //       color: selectedColor,
          //       borderRadius: BorderRadius.circular(15)
          //     ),
        
          //     child: Center(
          //       child: Text(
          //         "Selected Color",
          //         style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 20
          //         ),
          //       ),
          //     ),
          //   ),

          //   SizedBox(height: 25,),

          //   const Text("Choose a color"),

          //   const SizedBox(height: 15,),

          //   Wrap(
          //     spacing: 15,
          //     // runSpacing: 20,

          //     children: [
          //       ...availableColors.map((color){

          //         return GestureDetector(
          //           onTap: () {
          //             setState(() {
          //               selectedColor = color;
          //             });
          //           },

          //           child: CircleAvatar(
          //             radius: 25,
          //             backgroundColor: color,
          //           ),
          //         );

          //       })
          //     ],
          //   ),


            
        
          // ],
        // ),
      // ),

      
      


      Center(
        child: Column(
          children: [
        
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: 500,
                height: 250,
                decoration: BoxDecoration(
                  color: selectedColor,
                  borderRadius: BorderRadius.circular(10)
                ),
              
                child: Center(

                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue.shade100
                    ),
                    onPressed: () {
                      
                      showDialog(
                        context: context, 
                        builder: (context) {
                          
                          return AlertDialog(

                            title: Text("Select Color"),

                            // you can replace blackPicker to MaterialPicker to see different color design picker
                            content: BlockPicker(
                              pickerColor: selectedColor,
                              onColorChanged: (value) {
                                setState(() {
                                  selectedColor=value;
                                });
                              },
                            ),

                            actions: [
                              TextButton(
                                onPressed: () {
                                  
                                  Navigator.pop(context);
                                }, 
                                child: const Text("Done")
                              ),
                            ],

                            // content: ,
                          );

                        },
                      );
                    }, child: Text("Pick"),
                    
                  ), 
                ),
              ),
            ),
          ],
        ),
      ),
      


    );
  }
}
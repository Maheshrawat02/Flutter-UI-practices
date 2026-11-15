import 'package:flutter/material.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({super.key});

  @override
  State<FilterWidget> createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Chip(
          color: const WidgetStatePropertyAll<Color?>(Color.fromARGB(255, 202, 234, 233)),
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color:Color.fromARGB(255, 202, 234, 233),
            ),
          ),
          
          label: const Text("Shoes"),
        ),
        

        SizedBox(width: 7,),

        Chip(
          color: const WidgetStatePropertyAll<Color?>(Color.fromARGB(255, 202, 234, 233)),
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color.fromARGB(255, 202, 234, 233),
            ),
          ),
          
          label: const Text("Clothing"),
        ),
        

        SizedBox(width: 7,),

        Chip(
          color: const WidgetStatePropertyAll<Color?>(Color.fromARGB(255, 202, 234, 233)),
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color.fromARGB(255, 202, 234, 233),
            ),
          ),
          
          label: const Text("Electronics"),
        ),
        

        SizedBox(width: 7,),

        Chip(
          color: const WidgetStatePropertyAll<Color?>(Color.fromARGB(255, 202, 234, 233)),
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: Color.fromARGB(255, 202, 234, 233),
            ),
          ),
          
          label: const Text("Accessories"),
        ),


      ],
    );
  }
}
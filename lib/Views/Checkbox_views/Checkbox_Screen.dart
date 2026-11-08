import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {

  bool isChecked = false;

  bool checked = false;

  List<String> categories = [
    "Shoes",
    "Clothing",
    "Electronics",
    "Watches",
  ];

  List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkbox Screen"),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                

                // Use when you need complete control over the layout
                Checkbox(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: Colors.black,  //black checkbox bg
                  checkColor: Colors.white,  // white tick mark
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10000),
                  ),
                  value: isChecked,            // controls the current state of checkbox (false or true)
                  onChanged: (value) {
                    setState(() {
                      isChecked = !isChecked;
                    });
                  },
                ),

                SizedBox(
                  child: Text(
                    "Accept Terms and Conditions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  
                  
                ),
                

              ],
            ),

            SizedBox(height: 5,),
            


            // Use for simple settings and selection lists
            CheckboxListTile(
              title: Text(
                "Remember me",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              
              value: checked, 
              onChanged: (value) {
                setState(() {
                  checked = !checked;
                });
              },
            ),


            SizedBox(height: 5,),

            Column(
              children: categories.map((category) {
                
                return CheckboxListTile(
                  title: Text(category),
                  value: selectedCategories.contains(category), 
                  onChanged: (value) {
                    
                    setState(() {
                      
                      if (value == true) {
                        selectedCategories.add(category);
                      } else {
                        selectedCategories.remove(category);
                      }
                    });
                  },
                );
              },).toList(),
            ),
            

          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class CheckboxScreen extends StatefulWidget {
//   const new({super.key});

//   @override
//   State<CheckboxScreen> createState() => _CheckboxScreenState();
// }

// class _CheckboxScreenState extends State<CheckboxScreen> {

//   List<String> categories = [
//     'Shoes',
//     'Clothing',
//     'Electronics',
//     'Watches',
//   ];

//   List<String> selectedCategories = [];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: categories.map((category) {
          
//           return CheckboxListTile(
//             title: Text(category),
//             value: selectedCategories.contains(category), 
//             onChanged: (value) {
//               setState(() {
//                 if ( value == true) {
//                   selectedCategories.add(category);
//                 } else {
//                   selectedCategories.remove(category);
//                 }
//               });
//             },
//           );
//         },).toList(),
//       ),
//     );
//   }
// }
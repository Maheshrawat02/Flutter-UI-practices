import 'package:flutter/material.dart';

class CheckboxScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<CheckboxScreen> createState() => _CheckboxScreenState();
}

class _CheckboxScreenState extends State<CheckboxScreen> {

  bool isChecked = false;

  bool checked = false;

  List<String> products = [
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
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        isChecked = value!;
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

              const Divider(),
          
          
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
                    checked = value!;
                  });
                },
              ),
          
          
              SizedBox(height: 5,),

              const Divider(),

              ListTile(
                title: Text(
                  "Filter Products",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                subtitle: Text(
                  "Select the categories you want to view.",
                  style: TextStyle(
                    color: Colors.black
                  ),
                ),
              ),

              SizedBox(height: 5,),
          
              ...products.map((category) {
                
                  return CheckboxListTile(

                    title: Text(category),

                    value: selectedCategories.contains(category), //contains le current product chha ya chhaina bhanera check garchha
                    onChanged: (value) {
                      setState(() {
                        
                        if (value == true) {

                          // add products in selectedCategories
                          selectedCategories.add(category);
                        } else {

                          // remove products in selectedCategories
                          selectedCategories.remove(category);
                        }
                      });
                    },
                  );
              },),

              const Divider(),

              Text(
                "Selected Categories:",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  
                ),
              ),

              SizedBox(height: 7),

              ...selectedCategories.map((category) {
                  return Text(
                    category,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                    ),
                  );
              },),


              if (selectedCategories.isEmpty)
                const Text("No categories selected."),

              
              
          
            ],
          ),
        ),
      ),
    );
  }
}



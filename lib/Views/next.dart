import 'package:flutter/material.dart';

class Next extends StatefulWidget {
  const new({super.key});

  @override
  State<Next> createState() => _NextState();
}

class _NextState extends State<Next> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 210, 205, 205),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            Container(
              width: 350,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    children: [
                    ClipOval(
                      child: Image.network(
                        "https://passportsizephoto.in/_next/image?url=%2Fimages%2Fseo%2Fsample-passport-photo-man.png&w=640&q=75",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),

                    Positioned(
                      bottom: 180,
                      right: 5,
                      child: Text(
                        "1024 x 1024",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 8,
                          fontWeight: FontWeight.bold
                        ),
                      ), 
                    
                    ),
                    ],
                  ),
              
                  SizedBox(height: 10,),
              
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                    
                        Text(
                          "Name: Ramesh Rimal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        
                        Text(
                          "Name: Ramesh Rimal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        
                        Text(
                          "Name: Ramesh Rimal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        
                        Text(
                          "Name: Ramesh Rimal",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        
                      ],
                    ),
                  )
                ],
              ),
              ),
            




            
          ],
        ),
      ),
    );
  }
}
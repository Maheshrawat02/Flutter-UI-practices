import 'package:flutter/material.dart';

class SampleScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<SampleScreen> createState() => _SampleScreenState();
}

class _SampleScreenState extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
              },
              child: SizedBox(
                width: 600,
                // height: 400,
                child: Container(
                  color: Colors.black,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // thumbnail
                      Padding(
                        padding: const EdgeInsets.all(7),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                "https://boutique-spiderman.fr/cdn/shop/articles/BAO_f72cc156-c85b-4a3a-a434-a304eef975f1.jpg?v=1776205393&width=1920",
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
              
                            Positioned(
                              bottom: 13,
                              right: 10,
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                  vertical: 1,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.black45,
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Text(
                                  "9:19",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
              
                      SizedBox(height: 7),
              
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Row(
                          children: [
              
                            // profile
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(200),
                                  child: SizedBox(
                                    width: 30,
                                    child: Transform.translate(
                                      offset: const Offset(0, -5),
                                      child: Image.network(
                                        "https://yt3.googleusercontent.com/DhJXXPGEJSdHjSvmY8JexjnY6csQPcDxHODFKXma7lqB8idji2FJNmPNxjY-DYv6yCmwllRsMg=s120-c-k-c0x00ffffff-no-rj",
                                                    
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
              
                            // title
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "   SPIDER-MAN: BRAND NEW DAY - Extended Preview",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
              
                                    // details
                                    Row(
                                      children: [
                                        Text(
                                          "   Sony Pictures Entertainment ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
              
                                        Transform.translate(
                                          offset: const Offset(0, 1),
                                          child: Icon(
                                            Icons.check_circle,
                                            size: 15,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
              
                                        Text(
                                          " and 2 more  ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
              
                                        Transform.translate(
                                          offset: const Offset(0, 1),
                                          child: Icon(
                                            Icons.play_arrow_outlined,
                                            size: 18,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
              
                                        Text(
                                          " 2.7m 2 days ago    ",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
              
                                Transform.translate(
                                  
                                  offset: const Offset(0, -5),
                                  child: Icon(
                                    Icons.more_vert, 
                                    color: Colors.white,
                                    size: 30,
                                    fontWeight: FontWeight.w400,
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
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:practice_mr/Views/ButtomNavigationBar/home_screen.dart';
import 'package:practice_mr/Views/color_date_picker/color_picker_screen.dart';
import 'package:practice_mr/Views/color_date_picker/date_picker_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      
      home: const HomeScreen(),
    );
  }
}
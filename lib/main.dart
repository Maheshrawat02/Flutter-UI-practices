import 'package:flutter/material.dart';
import 'package:practice_mr/Views/FAQ_screen.dart';
import 'package:practice_mr/Views/accordions.dart';
import 'package:practice_mr/Views/home_view.dart';
import 'package:practice_mr/Views/next.dart';
import 'package:practice_mr/Views/sample_screen.dart';

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
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const HomeView()
      // home: const SampleScreen(),
      // home: const Next(),
      home: const Accordions(),
      // home: const FAQScreen(),
    );
  }
}
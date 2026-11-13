import 'package:flutter/material.dart';
import 'package:practice_mr/Views/Accordions_Screen/FAQ_screen.dart';
import 'package:practice_mr/Views/Accordions_Screen/accordions.dart';
import 'package:practice_mr/Views/Checkbox_views/Checkbox_Screen.dart';
import 'package:practice_mr/Views/Responsive_layout/build_grid_view.dart';
import 'package:practice_mr/Views/Responsive_layout/media_query.dart';
import 'package:practice_mr/Views/Responsive_layout/responsive_shop_screen.dart';
import 'package:practice_mr/Views/Responsive_layout/use_expanded_flexible.dart';
import 'package:practice_mr/Views/Responsive_layout/use_layout_builder.dart';
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
      // theme: ThemeData(
      //   colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      // ),
      
      home: const ResponsiveShopScreen(),
    );
  }
}
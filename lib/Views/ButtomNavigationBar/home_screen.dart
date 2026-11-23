import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const new({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndex = 0;

  final List<Widget> screens = [

    Center(child: Text("Home Screen")),
    Center(child: Text("Wishlist Screen")),
    Center(child: Text("Cart Screen")),
    Center(child: Text("Profile Screen")),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Expenses Tracker"),
      ),

      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,

        elevation: 2,

        selectedFontSize: 14,

        unselectedFontSize: 12,

        selectedItemColor: Colors.blue,

        unselectedItemColor: Colors.grey,

        showUnselectedLabels: true,

        type: BottomNavigationBarType.fixed,

        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        items: [

          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Wishlist"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: "Cart"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Profile"
          ),

        ],
      ),
    );
  }
}

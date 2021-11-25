import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeCategories/home_categories.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeProfile/home_profile.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/home_screen.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/Shop/shop.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationPages/HomeCart/home_cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> _navigatePages = <Widget>[
    const HomeScreen(),
    const HomeCategories(),
    const HomeCart(),
    const HomeProfile()
  ];

  void _onTapPages(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: _navigatePages.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.9),
        elevation: 0,
        currentIndex: selectedIndex,
        onTap: _onTapPages,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.red,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: DemoLocalization.of(context)!.getTranslatedValue("home"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.menu),
            label: DemoLocalization.of(context)!.getTranslatedValue("categories"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_cart),
            label: DemoLocalization.of(context)!.getTranslatedValue("cart"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: DemoLocalization.of(context)!.getTranslatedValue("profile"),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: SizedBox(
        height: 55,
        width: 55,
        child: FittedBox(
          child: FloatingActionButton(
            elevation: 5.0,
            backgroundColor: Colors.red,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Shop()));
            },
            tooltip: 'Shop',
            child: const Icon(
              Icons.shopping_bag,
              size: 25,
            ),
          ),
        ),
      ),
    );
  }
}

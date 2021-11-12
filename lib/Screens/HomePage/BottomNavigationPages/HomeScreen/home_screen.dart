import 'package:e_commerce/Screens/Drawer/language.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/carousel_slider.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/featured_categories_home.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/featured_products_home.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/top_categories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.grey),
          elevation: 0,
          backgroundColor: Colors.grey.shade50,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey, width: 1)),
                ),
              ),
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(left: 5, right: 5),
              child: const Icon(
                Icons.add_alert,
                color: Colors.grey,
              ),
            )
          ],
        ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: SafeArea(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Center(
                  child: Text(
                    "Not logged in",
                    style: TextStyle(
                      color: Colors.grey.shade500,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 12,),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade400,
                ),
              ),
              ListTile(
                minLeadingWidth: 10,
                minVerticalPadding: 5,
                leading: const Icon(Icons.translate, size: 20, color: Colors.black54,),
                title: const Text('Change Language', style: TextStyle(color: Colors.black54),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const Language()));
                },
              ),
              ListTile(
                minLeadingWidth: 10,
                minVerticalPadding: 5,
                leading: const Icon(Icons.home, size: 20, color: Colors.black54,),
                title: const Text('Home', style: TextStyle(color: Colors.black54),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                },
              ),
              Container(
                margin: const EdgeInsets.only(top: 12,),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade400,
                ),
              ),
              ListTile(
                minLeadingWidth: 10,
                minVerticalPadding: 5,
                leading: const Icon(Icons.sensor_door, size: 20, color: Colors.black54,),
                title: const Text('Log Out', style: TextStyle(color: Colors.black54),),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Carousel(),
            TopCategories(),
            FeaturedCategoriesHome(),
            FeaturedProductsHome(),
          ],
        ),
      )
    );
  }
}



import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeCategories/widgets/products_list_view.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatefulWidget {
  const HomeCategories({Key? key}) : super(key: key);

  @override
  _HomeCategoriesState createState() => _HomeCategoriesState();
}

class _HomeCategoriesState extends State<HomeCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.grey),
          elevation: 0,
          backgroundColor: Colors.grey.shade50,
          centerTitle: true,
          title: const Text(
            "Categories",
            style: TextStyle(
                color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
          ),
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
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                ListTile(
                  minLeadingWidth: 10,
                  minVerticalPadding: 5,
                  leading: const Icon(
                    Icons.translate,
                    size: 20,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Change Language',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  minLeadingWidth: 10,
                  minVerticalPadding: 5,
                  leading: const Icon(
                    Icons.home,
                    size: 20,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onTap: () {
                    // Update the state of the app
                    // ...
                    // Then close the drawer
                    Navigator.pop(context);
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 12,
                  ),
                  child: Divider(
                    height: 1,
                    thickness: 1,
                    color: Colors.grey.shade400,
                  ),
                ),
                ListTile(
                  minLeadingWidth: 10,
                  minVerticalPadding: 5,
                  leading: const Icon(
                    Icons.sensor_door,
                    size: 20,
                    color: Colors.grey,
                  ),
                  title: const Text(
                    'Log Out',
                    style: TextStyle(color: Colors.grey),
                  ),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProductsListView(),
          ],
        ));
  }
}

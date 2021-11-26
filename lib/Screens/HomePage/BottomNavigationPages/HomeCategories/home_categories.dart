import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/Drawer/drawer.dart';
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
          title: Text(
            DemoLocalization.of(context)!
                .getTranslatedValue("categories")
                .toString(),
            style: const TextStyle(
                color: Colors.red, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        drawer: const DrawerView(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProductsListView(),
          ],
        ));
  }
}

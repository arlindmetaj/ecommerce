import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/Drawer/drawer.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/carousel_slider.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/featured_categories_home.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/featured_products_home.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/widgets/top_categories.dart';
import 'package:e_commerce/Screens/Search/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: TextFormField(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchScreen()));
                    },
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.only(
                          left: 15,
                          bottom: 10,
                        ),
                        hintText: DemoLocalization.of(context)!
                            .getTranslatedValue("search")),
                  ),
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
        drawer: const DrawerView(),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 50),
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
        ));
  }
}

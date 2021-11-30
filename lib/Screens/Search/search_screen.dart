import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/Search/widgets/search_products_view.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 35,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: DemoLocalization.of(context)!
                          .getTranslatedValue("search_here"),
                      hintStyle: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 11
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: const SingleChildScrollView(
        child: SearchProductsView(),
      ),
    );
  }
}

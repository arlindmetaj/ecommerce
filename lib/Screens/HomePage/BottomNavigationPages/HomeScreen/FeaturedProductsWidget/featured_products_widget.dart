import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/featured_products_details.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/liked_products.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/more_details.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/products_images_list.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/top_selling.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class FeaturedProductsWidget extends StatefulWidget {
  const FeaturedProductsWidget(
      {required this.productName,
      required this.productImage,
      required this.imagesList})
      : super();

  final String productName;
  final String productImage;
  final List imagesList;

  @override
  _FeaturedProductsWidgetState createState() => _FeaturedProductsWidgetState();
}

class _FeaturedProductsWidgetState extends State<FeaturedProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                ),
              ),
              title: Text(
                widget.productName,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    Share.share("https://pub.dev/packages/share/install");
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Icon(
                      Icons.share,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              padding: const EdgeInsets.only(bottom: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductsImagesList(
                    productImage: widget.productImage,
                    imagesList: widget.imagesList,
                  ),
                  FeaturedProductsDetails(
                    productName: widget.productName,
                    image: widget.productImage,
                  ),
                  const MoreAbout(),
                  const LikedProducts(),
                  const TopSelling(),
                ],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 2,
                      color: Colors.red,
                      child: const Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

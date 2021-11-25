import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/Shop/ProductsView/widgets/featured_products.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/Shop/ProductsView/widgets/least_selling_view.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/Shop/ProductsView/widgets/new_arrivals_view.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/Shop/ProductsView/widgets/shop_carousel.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ShopProductsDetails extends StatefulWidget {
  const ShopProductsDetails({required this.image, required this.name})
      : super();

  final String image;
  final String name;

  @override
  _ShopProductsDetailsState createState() => _ShopProductsDetailsState();
}

class _ShopProductsDetailsState extends State<ShopProductsDetails> {
  var rating = 3.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.grey),
              elevation: 0,
              backgroundColor: Colors.grey.shade50,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    height: 45,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Image.asset(
                      widget.image,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontWeight: FontWeight.w500),
                      ),
                      SmoothStarRating(
                        rating: rating,
                        isReadOnly: false,
                        size: 20,
                        color: Colors.yellow,
                        borderColor: Colors.yellow,
                        filledIconData: Icons.star,
                        halfFilledIconData: Icons.star_half,
                        defaultIconData: Icons.star_border,
                        starCount: 5,
                        allowHalfRating: true,
                        spacing: 2.0,
                        onRated: (value) {
                          // print("rating value dd -> ${value.truncate()}");
                        },
                      ),
                    ],
                  )
                ],
              ),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const ScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ShopCarousel(),
                  NewArrivalsView(),
                  LeastSellingView(),
                  FeaturedProducts(),
                ],
              ),
            ),
          ),
          Positioned.fill(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.red
                ),
                child: const Center(
                  child: Text(
                    "View All Products From This Seller",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Models/featured_products.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/featured_products_widget.dart';
import 'package:flutter/material.dart';

class FeaturedProductsHome extends StatefulWidget {
  const FeaturedProductsHome({Key? key}) : super(key: key);

  @override
  _FeaturedProductsHomeState createState() => _FeaturedProductsHomeState();
}

class _FeaturedProductsHomeState extends State<FeaturedProductsHome> {
  final List<FeaturedProducts> _featuredProducts =
      FeaturedProducts.featuredProducts;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15, top: 20, bottom: 15),
          child: Text(
            DemoLocalization.of(context)!
                .getTranslatedValue("featured_products")
                .toString(),
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.only(bottom: 40),
            itemCount: _featuredProducts.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 330,
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FeaturedProductsWidget(
                        productName: _featuredProducts[index]
                            .description
                            .substring(0, 15),
                        productImage: _featuredProducts[index].image, imagesList: _featuredProducts[index].imageList,
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 220,
                  margin: const EdgeInsets.only(left: 15, right: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.grey.shade300,
                      )),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 60,
                        child: Image.asset(_featuredProducts[index].image),
                      ),
                      SizedBox(
                        //margin: const EdgeInsets.only(left: 5, right: 5),
                        width: 110,
                        child: Text(
                          _featuredProducts[index].description,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 9,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _featuredProducts[index].price.toString(),
                            style: const TextStyle(
                                color: Colors.red,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })
      ],
    );
  }
}

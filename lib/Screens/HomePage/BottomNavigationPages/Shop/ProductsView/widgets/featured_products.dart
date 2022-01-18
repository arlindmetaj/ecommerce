import 'package:e_commerce/Models/featured_products.dart';
import 'package:flutter/material.dart';

class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts({Key? key}) : super(key: key);

  @override
  _FeaturedProductsState createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10, left: 5),
            child: const Text(
              "Featured Products",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 5, top: 10, right: 5),
            child: GridView.builder(
                physics: const ScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 55),
                itemCount: 6,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: (130.0 / 180.0),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return Container(
                      height: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [],
                      ));
                }),
          ),
        ],
      ),
    );
  }
}

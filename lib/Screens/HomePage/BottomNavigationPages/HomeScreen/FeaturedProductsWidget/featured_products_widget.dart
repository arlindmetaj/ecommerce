import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/featured_products_details.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeScreen/FeaturedProductsWidget/widgets/products_images_list.dart';
import 'package:flutter/material.dart';

class FeaturedProductsWidget extends StatefulWidget {
  const FeaturedProductsWidget({required this.productName, required this.productImage,required this.imagesList}) : super();

  final String productName;
  final String productImage;
  final List imagesList;

  @override
  _FeaturedProductsWidgetState createState() => _FeaturedProductsWidgetState();
}

class _FeaturedProductsWidgetState extends State<FeaturedProductsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        elevation: 0,
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        title: Text(widget.productName, style: const TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.share,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductsImagesList(productImage: widget.productImage, imagesList: widget.imagesList,),
            FeaturedProductsDetails(productName: widget.productName, image: widget.productImage,)
          ],
        ),
      ),
    );
  }
}

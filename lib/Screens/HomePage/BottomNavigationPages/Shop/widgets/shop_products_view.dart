import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Localization/localization_constants.dart';
import 'package:e_commerce/Models/shops_model.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/Shop/ProductsView/shop_products_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShopProductsView extends StatefulWidget {
  const ShopProductsView({Key? key}) : super(key: key);

  @override
  _ShopProductsViewState createState() => _ShopProductsViewState();
}

class _ShopProductsViewState extends State<ShopProductsView> {
  final List<Shops> shopList = Shops.shopsList;

  @override
  Widget build(BuildContext context) {
    var items = [
      getTranslated(context, "product"),
      getTranslated(context, "sellers"),
      getTranslated(context, "brands"),
      // "Products",
      // "Sellers",
      // "Brands"
    ];

    String dropDownValue = items.first.toString();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  height: 25,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: DropdownButton(
                      underline:
                          DropdownButtonHideUnderline(child: Container()),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                      value: dropDownValue,
                      onChanged: (newValue) {
                        setState(() {
                          dropDownValue = newValue.toString();
                        });
                      },
                      items: items.map((product) {
                        return DropdownMenuItem(
                          child: Text(product.toString()),
                          value: product,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Container(
                margin: const EdgeInsets.only(left: 4, right: 4),
                height: 25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.filter_alt,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Text(
                      DemoLocalization.of(context)!
                          .getTranslatedValue("filter")
                          .toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                height: 25,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.swap_vertical_circle,
                      color: Colors.grey,
                      size: 15,
                    ),
                    Text(
                      DemoLocalization.of(context)!
                          .getTranslatedValue("sort")
                          .toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: GridView.builder(
              physics: const ScrollPhysics(),
              padding: const EdgeInsets.only(bottom: 40),
              itemCount: shopList.length,
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShopProductsDetails(
                                  image: shopList[index].image,
                                  name: shopList[index].shopName,
                                )));
                  },
                  child: Container(
                    height: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 50,
                          child: Image.asset(
                            shopList[index].image,
                            height: 60,
                            width: 50,
                          ),
                        ),
                        Text(
                          shopList[index].shopName,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

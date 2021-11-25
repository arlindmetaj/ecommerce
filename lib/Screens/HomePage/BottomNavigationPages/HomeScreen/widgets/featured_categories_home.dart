import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Models/featured_categories.dart';
import 'package:flutter/material.dart';

class FeaturedCategoriesHome extends StatefulWidget {
  const FeaturedCategoriesHome({Key? key}) : super(key: key);

  @override
  _FeaturedCategoriesHomeState createState() => _FeaturedCategoriesHomeState();
}

class _FeaturedCategoriesHomeState extends State<FeaturedCategoriesHome> {
  final List<FeaturedCategories> _featuredCategories =
      FeaturedCategories.featuredCategories;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(left: 15, bottom: 10),
          height: 30,
          child: Text(
            DemoLocalization.of(context)!
                .getTranslatedValue("featured_categories").toString(),
            style: const TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
        SizedBox(
          height: 150,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: _featuredCategories.length,
            itemBuilder: (context, index) {
              return Container(
                height: 130,
                width: 100,
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
                      height: 80,
                      width: 60,
                      child: Image.asset(_featuredCategories[index].image),
                    ),
                    SizedBox(
                      width: 60,
                      child: Text(
                        _featuredCategories[index].name,
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

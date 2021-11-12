import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentIndex = 0;

  final List<AssetImage> image = [
    const AssetImage("assets/images/b1.jpg"),
    const AssetImage("assets/images/b2.jpg"),
    const AssetImage("assets/images/b3.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 2000),
            autoPlayCurve: Curves.fastOutSlowIn,
            aspectRatio: 2.0,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(
                () {
                  currentIndex = index;
                },
              );
            },
          ),
          items: image
              .map(
                (item) => Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Card(
                    elevation: 1.0,
                    shadowColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            item.assetName,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: image.map((urlOfItem) {
                                int index = image.indexOf(urlOfItem);
                                return Container(
                                  width: 10.0,
                                  height: 10.0,
                                  margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: currentIndex == index
                                        ? const Color.fromRGBO(0, 0, 0, 0.8)
                                        : const Color.fromRGBO(0, 0, 0, 0.3),
                                  ),
                                );
                              }).toList(),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
              .toList()),
    );
  }
}

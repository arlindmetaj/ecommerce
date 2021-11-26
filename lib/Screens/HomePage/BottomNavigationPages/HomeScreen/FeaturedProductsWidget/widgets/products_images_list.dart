import 'package:flutter/material.dart';

class ProductsImagesList extends StatefulWidget {
  const ProductsImagesList({required this.productImage, required this.imagesList}) : super();

  final String productImage;
  final List imagesList;

  @override
  _ProductsImagesListState createState() => _ProductsImagesListState();
}

class _ProductsImagesListState extends State<ProductsImagesList> {
  int selectedImage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 180,
            width: 180,
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(widget.imagesList[selectedImage]),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                  widget.imagesList.length, (index) => buildSmallPreview(index)),
            ],
          )
        ],
      ),
    );
  }

  buildSmallPreview(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          height: 45,
          width: 45,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: selectedImage == index ? Colors.orange : Colors.grey,
              )),
          child: Center(
            child: Image.asset(
              widget.imagesList[index],
              height: 35,
              width: 35,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LikedProducts extends StatefulWidget {
  const LikedProducts({Key? key}) : super(key: key);

  @override
  _LikedProductsState createState() => _LikedProductsState();
}

class _LikedProductsState extends State<LikedProducts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.shade200,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            "Products you may also like",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        SizedBox(
          height: 180,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 15,
            itemBuilder: (context, index){
              return Container(
                margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                height: 180,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

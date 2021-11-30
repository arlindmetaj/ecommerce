import 'package:flutter/material.dart';

class TopSelling extends StatefulWidget {
  const TopSelling({Key? key}) : super(key: key);

  @override
  _TopSellingState createState() => _TopSellingState();
}

class _TopSellingState extends State<TopSelling> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 15),
          child: const Text(
            "Top Selling Products",
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

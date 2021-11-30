import 'package:flutter/material.dart';

class MoreAbout extends StatefulWidget {
  const MoreAbout({Key? key}) : super(key: key);

  @override
  _MoreAboutState createState() => _MoreAboutState();
}

class _MoreAboutState extends State<MoreAbout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Video",
                style: TextStyle(
                    color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.black87,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Reviews",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.black87,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Seller Policy",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.black87,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Return Policy",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.black87,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Support Policy",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Icon(
                Icons.add,
                size: 30,
                color: Colors.black87,
              )
            ],
          ),
        ],
      ),
    );
  }
}

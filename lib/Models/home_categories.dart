import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categories {
  late final Icon icon;
  late final String name;

  Categories({required this.icon, required this.name});

  static List<Categories> categoriesList = [
    Categories(icon: const Icon(Icons.auto_awesome_mosaic, color: Colors.red,), name: "Top Categories"),
    Categories(icon: const Icon(Icons.lightbulb, color: Colors.green,), name: "Brands"),
    Categories(icon: const Icon(Icons.star_border_purple500, color: Colors.yellow,), name: "Top Sellers"),
    Categories(icon: const Icon(Icons.calendar_today, color: Colors.deepOrange,), name: "Todays Deal"),
    Categories(icon: const Icon(Icons.bolt, color: Colors.blue,), name: "Flash Deal"),
  ];
}
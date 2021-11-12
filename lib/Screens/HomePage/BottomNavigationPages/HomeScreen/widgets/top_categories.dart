import 'package:e_commerce/Models/home_categories.dart';
import 'package:flutter/material.dart';

class TopCategories extends StatefulWidget {
  const TopCategories({Key? key}) : super(key: key);

  @override
  _TopCategoriesState createState() => _TopCategoriesState();
}

class _TopCategoriesState extends State<TopCategories> {

  final List<Categories> _list = Categories.categoriesList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _list.length,
        itemBuilder: (context, index){
          return Column(
            children: [
              Container(
                height: 58,
                width: 58,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.grey.shade200, width: 1)
                ),
                child: Center(
                  child: Icon(
                    _list[index].icon.icon,
                    color: _list[index].icon.color,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 10, top: 5),
                child: Text(
                  _list[index].name,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 10,
                    fontWeight: FontWeight.w400
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}

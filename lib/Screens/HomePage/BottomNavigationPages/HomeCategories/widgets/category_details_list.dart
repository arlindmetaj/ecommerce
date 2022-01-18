import 'package:flutter/material.dart';

class CategoryDetailsView extends StatefulWidget {
  const CategoryDetailsView({required this.name, required this.image})
      : super();

  final String name;
  final String image;

  @override
  _CategoryDetailsViewState createState() => _CategoryDetailsViewState();
}

class _CategoryDetailsViewState extends State<CategoryDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.grey.shade50,
                leading: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey.shade500,
                  ),
                ),
                centerTitle: true,
                title: Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.red,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 50),
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 120,
                      width: double.infinity,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                color: Colors.grey.shade300),
                            child: Center(
                                child: Icon(
                              Icons.shopping_bag,
                              size: 50,
                              color: Colors.grey.shade500,
                            )),
                          )
                        ],
                      ),
                    );
                  },
                ),
              )),
          Positioned.fill(
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                //margin: const EdgeInsets.only(left: 10, right: 10),
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("All Products of ${widget.name}", style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

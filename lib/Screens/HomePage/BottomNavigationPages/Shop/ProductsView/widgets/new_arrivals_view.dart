import 'package:e_commerce/Models/new_arrivals.dart';
import 'package:flutter/material.dart';

class NewArrivalsView extends StatefulWidget {
  const NewArrivalsView({Key? key}) : super(key: key);

  @override
  _NewArrivalsViewState createState() => _NewArrivalsViewState();
}

class _NewArrivalsViewState extends State<NewArrivalsView> {

  final List<NewArrivals> arrivalProducts = NewArrivals.newArrivals;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: const Text(
              "New arrivals",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: arrivalProducts.length,
              itemBuilder: (context, index){
                return Container(
                  height: 140,
                  width: 90,
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade500),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 7,),
                      SizedBox(
                        height: 50,
                        width: 60,
                        child: Image.asset(arrivalProducts[index].image),
                      ),
                      SizedBox(
                        height: 50,
                        width: 60,
                        child: Text(
                          arrivalProducts[index].description,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                            fontWeight: FontWeight.w400
                          ),
                          textAlign: TextAlign.left,
                          maxLines: 5,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                        width: 30,
                        child: Text(
                          "\$" + arrivalProducts[index].price.toString(),
                          style: const TextStyle(
                            fontSize: 10,
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 7,),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

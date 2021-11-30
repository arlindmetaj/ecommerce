import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class FeaturedProductsDetails extends StatefulWidget {
  const FeaturedProductsDetails(
      {required this.productName, required this.image})
      : super();

  final String productName;
  final String image;

  @override
  _FeaturedProductsDetailsState createState() =>
      _FeaturedProductsDetailsState();
}

class _FeaturedProductsDetailsState extends State<FeaturedProductsDetails> {
  var rating = 3.0;

  final String text =
      "Flutter is Google’s mobile UI framework for crafting high-quality native interfaces on iOS and Android in record time. Flutter works with existing code, is used by developers and organizations around the world, and is free and open source.";

  late String firstHalf;
  late String secondHalf;

  bool flag = true;

  int counter = 0;

  void _incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      counter--;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    if (text.length > 50) {
      firstHalf = text.substring(0, 50);
      secondHalf = text.substring(50, text.length);
    } else {
      firstHalf = text;
      secondHalf = "";
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 15, right: 15),
          child: Text(
            widget.productName,
            style: const TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 15, right: 15),
              child: SmoothStarRating(
                rating: rating,
                isReadOnly: true,
                size: 25,
                color: Colors.yellow,
                borderColor: Colors.yellow,
                filledIconData: Icons.star,
                halfFilledIconData: Icons.star_half,
                defaultIconData: Icons.star_border,
                starCount: 5,
                allowHalfRating: true,
                spacing: 2.0,
                onRated: (value) {
                  // print("rating value dd -> ${value.truncate()}");
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 25,
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 10),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text(
                          "Brand",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 25),
                          child: const Text(
                            "Rolex",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Center(
                        child: Image.asset(
                          widget.image,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: const Text(
                                  "\$650,00",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Club Point:",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: Container(
                                  height: 25,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      border: Border.all(color: Colors.orange),
                                      color: Colors.orange.shade200),
                                  child: const Center(
                                    child: Text(
                                      "0",
                                      style: TextStyle(
                                          color: Colors.orange,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10, left: 15, right: 15, bottom: 10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Color",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(color: Colors.purple)),
                                  child: const Center(
                                    child: Icon(
                                      Icons.done,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Size",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 50,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 2,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        margin: const EdgeInsets.only(
                                            left: 10, top: 5, bottom: 5),
                                        height: 20,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.grey.shade300)),
                                      );
                                    }),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Quantity",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                height: 30,
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.grey)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    IconButton(
                                      padding: const EdgeInsets.only(),
                                      icon: const Icon(
                                        Icons.remove,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        _decrementCounter();
                                      },
                                    ),
                                    Text(
                                      "$counter",
                                    ),
                                    IconButton(
                                      padding: const EdgeInsets.only(),
                                      icon: const Icon(
                                        Icons.add,
                                        size: 20,
                                        color: Colors.black,
                                      ),
                                      onPressed: () {
                                        _incrementCounter();
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Text(
                                "Total Price",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 25),
                                child: const Text(
                                  "\$0,0",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              Text(
                                "Seller",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "In House Product",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          ),
                          //todo
                          InkWell(
                            onTap: (){
                              chatWithSeller();
                            },
                            child: const Text(
                              "Chat with seller",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blueAccent,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade200,
              ),
              Container(
                  margin: const EdgeInsets.only(
                      top: 10, left: 15, right: 15, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      secondHalf.isEmpty
                          ? Text(firstHalf)
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(flag
                                    ? (firstHalf + "...")
                                    : (firstHalf + secondHalf)),
                                InkWell(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        flag ? "show more" : "show less",
                                        style:
                                            const TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  onTap: () {
                                    setState(() {
                                      flag = !flag;
                                    });
                                  },
                                ),
                              ],
                            ),
                    ],
                  )),
              Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade200,
              ),
            ],
          ),
        ),
      ],
    );
  }
  void chatWithSeller(){
     showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          actions: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Title",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 5, top: 5),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                      Border.all(color: Colors.grey.shade200)),
                  child: TextFormField(
                    //controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.email],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Message*",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(bottom: 10, top: 5),
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border:
                      Border.all(color: Colors.grey.shade200)),
                  child: TextFormField(
                    //controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.email],
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: const Center(
                            child: Text(
                              "CLOSE",
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                          color: Colors.red
                        ),
                        child: const Center(
                          child: Text(
                            "SEND",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }
}

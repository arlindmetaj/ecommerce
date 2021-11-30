import 'package:e_commerce/Localization/localization_constants.dart';
import 'package:flutter/material.dart';

class ProfileButtons extends StatefulWidget {
  const ProfileButtons({Key? key}) : super(key: key);

  @override
  _ProfileButtonsState createState() => _ProfileButtonsState();
}

class _ProfileButtonsState extends State<ProfileButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 7, bottom: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade200,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.list_alt,
                          color: Colors.green,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      getTranslated(context, "orders").toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade200,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.person,
                          color: Colors.blue,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      getTranslated(context, "profile").toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade200,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.location_on,
                          color: Colors.deepOrangeAccent,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      getTranslated(context, "address").toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey.shade200,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.message,
                          color: Colors.red,
                          size: 20,
                        ),
                      ),
                    ),
                    Text(
                      getTranslated(context, "message").toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey.shade300,
          ),
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        getTranslated(context, "notifications").toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.redeem,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        getTranslated(context, "purchase_history").toString(),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

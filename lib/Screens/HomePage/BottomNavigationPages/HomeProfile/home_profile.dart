import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeProfile/widgets/account_details.dart';
import 'package:e_commerce/Screens/HomePage/BottomNavigationPages/HomeProfile/widgets/profile_buttons.dart';
import 'package:flutter/material.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  _HomeProfileState createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        leading: const Icon(
          Icons.menu,
          color: Colors.grey,
        ),
        centerTitle: true,
        title: const Text(
          "Account",
          style: TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          AccountDetails(),
          ProfileButtons(),
        ],
      )
    );
  }
}

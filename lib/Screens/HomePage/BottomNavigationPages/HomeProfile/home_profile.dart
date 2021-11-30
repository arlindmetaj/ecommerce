import 'package:e_commerce/Localization/localization_constants.dart';
import 'package:e_commerce/Screens/Drawer/drawer.dart';
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
        iconTheme: const IconThemeData(color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        centerTitle: true,
        title: Text(
          getTranslated(context, "account").toString(),
          style: const TextStyle(
              color: Colors.red,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      drawer: const DrawerView(),
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

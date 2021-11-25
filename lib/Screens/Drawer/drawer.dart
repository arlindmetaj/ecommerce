import 'package:e_commerce/AuthenticatorPages/Login/login_page.dart';
import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/Drawer/widgets/language_list.dart';
import 'package:e_commerce/Screens/HomePage/home_page.dart';
import 'package:flutter/material.dart';

class DrawerView extends StatefulWidget {
  const DrawerView({Key? key}) : super(key: key);

  @override
  _DrawerViewState createState() => _DrawerViewState();
}

class _DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: SafeArea(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Center(
                child: Text(
                  DemoLocalization.of(context)!
                      .getTranslatedValue("not_logged_in")
                      .toString(),
                  style: TextStyle(
                      color: Colors.grey.shade500, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 12,
              ),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade400,
              ),
            ),
            ListTile(
              minLeadingWidth: 10,
              minVerticalPadding: 5,
              leading: const Icon(
                Icons.translate,
                size: 20,
                color: Colors.black54,
              ),
              title: Text(
                DemoLocalization.of(context)!
                    .getTranslatedValue("change_language")
                    .toString(),
                style: const TextStyle(color: Colors.black54),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LanguageList()));
              },
            ),
            ListTile(
              minLeadingWidth: 10,
              minVerticalPadding: 5,
              leading: const Icon(
                Icons.home,
                size: 20,
                color: Colors.black54,
              ),
              title: Text(
                DemoLocalization.of(context)!
                    .getTranslatedValue("home")
                    .toString(),
                style: const TextStyle(color: Colors.black54),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 12,
              ),
              child: Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey.shade400,
              ),
            ),
            ListTile(
              minLeadingWidth: 10,
              minVerticalPadding: 5,
              leading: const Icon(
                Icons.sensor_door,
                size: 20,
                color: Colors.black54,
              ),
              title: Text(
                DemoLocalization.of(context)!
                    .getTranslatedValue("log_out")
                    .toString(),
                style: const TextStyle(color: Colors.black54),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

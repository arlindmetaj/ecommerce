import 'package:e_commerce/AuthenticatorPages/SignUp/sign_up.dart';
import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/HomePage/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey.shade50,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Center(
                child: SizedBox(
                  height: 140,
                  width: 100,
                  child: Icon(
                    Icons.local_mall,
                    color: Colors.red,
                    size: 80,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "${DemoLocalization.of(context)!.getTranslatedValue("login_to").toString()} Active eCommerce",
                  style: const TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30, bottom: 40),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              DemoLocalization.of(context)!
                                  .getTranslatedValue("email")
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.red,
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
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 15),
                                hintText: 'user@example.com',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              DemoLocalization.of(context)!
                                  .getTranslatedValue("or,Login with a phone")
                                  .toString(),
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 30, right: 30, top: 15),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              DemoLocalization.of(context)!
                                  .getTranslatedValue("password")
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.red,
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
                              obscureText: true,
                              decoration: const InputDecoration(
                                contentPadding: EdgeInsets.only(left: 15),
                                border: InputBorder.none,
                                hintText: '**********',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              DemoLocalization.of(context)!
                                  .getTranslatedValue("forgot_password")
                                  .toString(),
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.red,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()));
                    },
                    child: Container(
                      height: 50,
                      margin: const EdgeInsets.only(
                          left: 35, right: 35, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.amber.shade300),
                      child: Center(
                        child: Text(
                          DemoLocalization.of(context)!
                              .getTranslatedValue("login")
                              .toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      DemoLocalization.of(context)!
                          .getTranslatedValue("or,create a new account")
                          .toString(),
                      style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    },
                    child: Container(
                      height: 50,
                      margin:
                          const EdgeInsets.only(left: 35, right: 35, top: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.red),
                      child: Center(
                        child: Text(
                          DemoLocalization.of(context)!
                              .getTranslatedValue("sign_up")
                              .toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}

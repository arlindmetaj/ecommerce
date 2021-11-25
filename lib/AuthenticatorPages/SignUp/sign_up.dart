import 'package:e_commerce/AuthenticatorPages/Login/login_page.dart';
import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Screens/HomePage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool pressAttention = true;

  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

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
                "${DemoLocalization.of(context)!.getTranslatedValue("join").toString()} Active eCommerce",
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 20),
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
                                .getTranslatedValue("name")
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
                              border: Border.all(color: Colors.grey.shade200)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.only(left: 15),
                              hintText: DemoLocalization.of(context)!
                                  .getTranslatedValue("name_surname"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 30, right: 30, top: 15),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: pressAttention
                              ? Text(
                                  DemoLocalization.of(context)!
                                      .getTranslatedValue("email")
                                      .toString(),
                                  style: const TextStyle(
                                      color: Colors.red,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                )
                              : Text(
                                  DemoLocalization.of(context)!
                                      .getTranslatedValue("phone")
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
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.grey.shade200)),
                          child: pressAttention
                              ? TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.only(left: 15),
                                    border: InputBorder.none,
                                    hintText: 'user@example.com',
                                  ),
                                )
                              : InternationalPhoneNumberInput(
                                  inputDecoration: const InputDecoration(
                                    hintText: "0123456789",
                                    helperStyle: TextStyle(color: Colors.grey),
                                    contentPadding:
                                        EdgeInsets.only(top: 7, left: 7),
                                    enabledBorder: OutlineInputBorder(
                                      // width: 0.0 produces a thin "hairline" border
                                      borderSide: BorderSide(
                                          color: Colors.grey, width: 0.0),
                                    ),
                                  ),
                                  onInputChanged: (PhoneNumber number) {
                                    print(number.phoneNumber);
                                  },
                                  onInputValidated: (bool value) {
                                    print(value);
                                  },
                                  selectorConfig: const SelectorConfig(
                                      leadingPadding: 8.0,
                                      selectorType:
                                          PhoneInputSelectorType.BOTTOM_SHEET,
                                      showFlags: true),
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle:
                                      const TextStyle(color: Colors.black),
                                  initialValue: number,
                                  textFieldController: controller,
                                  formatInput: false,
                                  keyboardType:
                                      const TextInputType.numberWithOptions(
                                          signed: true, decimal: true),
                                  inputBorder: const OutlineInputBorder(),
                                  onSaved: (PhoneNumber number) {
                                    print('On Saved: $number');
                                  },
                                ),
                        ),
                        GestureDetector(
                          onTap: () {
                            handleChanges();
                          },
                          child: Container(
                              alignment: Alignment.centerRight,
                              child: pressAttention
                                  ? Text(
                                      DemoLocalization.of(context)!
                                          .getTranslatedValue(
                                              "or,Register with phone number")
                                          .toString(),
                                      style: const TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    )
                                  : Text(
                                      DemoLocalization.of(context)!
                                          .getTranslatedValue(
                                              "or,Register with phone number")
                                          .toString(),
                                      style: const TextStyle(
                                          decoration: TextDecoration.underline,
                                          color: Colors.red,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    )),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
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
                              border: Border.all(color: Colors.grey.shade200)),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              border: InputBorder.none,
                              hintText: '*********',
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            DemoLocalization.of(context)!
                                .getTranslatedValue("password_register")
                                .toString(),
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            DemoLocalization.of(context)!
                                .getTranslatedValue("retype_password")
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
                              border: Border.all(color: Colors.grey.shade200)),
                          child: TextFormField(
                            obscureText: true,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 15),
                              border: InputBorder.none,
                              hintText: '*********',
                            ),
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
                    margin:
                        const EdgeInsets.only(left: 35, right: 35, bottom: 15),
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
                ),
                Center(
                  child: Text(
                    DemoLocalization.of(context)!
                        .getTranslatedValue("already")
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
                            builder: (context) => const LoginPage()));
                  },
                  child: Container(
                    height: 50,
                    margin: const EdgeInsets.only(
                      left: 35,
                      right: 35,
                    ),
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
              ],
            )
          ],
        ),
      ),
    );
  }

  handleChanges() {
    setState(() {
      pressAttention = !pressAttention;
    });
  }
}

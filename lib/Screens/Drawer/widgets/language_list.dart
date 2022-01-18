import 'package:e_commerce/Localization/dart_localization.dart';
import 'package:e_commerce/Localization/localization_constants.dart';
import 'package:e_commerce/Models/language.dart';
import 'package:e_commerce/main.dart';
import 'package:flutter/material.dart';

class LanguageList extends StatefulWidget {
  const LanguageList({Key? key}) : super(key: key);

  @override
  _LanguageListState createState() => _LanguageListState();
}

class _LanguageListState extends State<LanguageList> {
  final List<Language> languages = Language.languageList();

  int? selectedLang;

  void _changeLanguage(Language language) async {
    Locale _locale = await setLocale(language.languageCode);

    MyApp.setLocale(context, _locale);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 20,
          ),
        ),
        centerTitle: true,
        title: Text(
          DemoLocalization.of(context)!
              .getTranslatedValue("language")
              .toString(),
          style: const TextStyle(
              color: Colors.red, fontSize: 15, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<Language>(
              underline: const SizedBox(),
              icon: const Icon(
                Icons.language,
                color: Colors.grey,
              ),
              items: Language.languageList()
                  .map<DropdownMenuItem<Language>>(
                    (e) => DropdownMenuItem<Language>(
                  value: e,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(e.name)
                    ],
                  ),
                ),
              ).toList(),
              onChanged: (language){
                _changeLanguage(language!);
              },
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: languages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedLang = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
                    height: 45,
                    width: double.infinity,
                    decoration: selectedLang == index
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.red, width: 1),
                          )
                        : BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                    child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Image.asset(
                                    languages[index].flag,
                                    height: 20,
                                    width: 20,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(
                                languages[index].name,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
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

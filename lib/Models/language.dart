class Language {
  late final int id;
  late final String name;
  late final String flag;
  late final String languageCode;


  Language({required this.id,required this.name, required this.flag, required this.languageCode});

  static List<Language> languageList(){
    return <Language>[
      Language(id: 1, name: "English", flag: "assets/icons/us.png", languageCode: "en"),
      Language(id: 2, name: "France", flag: "assets/icons/fr.png", languageCode: "fr"),
      Language(id: 3, name: "German", flag: "assets/icons/de.png", languageCode: "de"),
    ];
  }

}
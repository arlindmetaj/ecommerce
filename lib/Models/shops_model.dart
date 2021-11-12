class Shops {
  late final String image;
  late final String shopName;

  Shops({required this.image, required this.shopName});

  static List<Shops> shopsList = [
    Shops(image: "assets/images/s1.png", shopName: "Mark and Spencer"),
    Shops(image: "assets/images/s2.png", shopName: "Baby Hug"),
    Shops(image: "assets/images/s3.png", shopName: "Zara Fashion"),
    Shops(image: "assets/images/s4.png", shopName: "BMW"),
    Shops(image: "assets/images/s5.png", shopName: "Royal Enfield"),
    Shops(image: "assets/images/s6.png", shopName: "Apple"),
    Shops(image: "assets/images/s7.png", shopName: "Philipps"),
    Shops(image: "assets/images/s8.png", shopName: "Louis Vuitton"),
  ];

}
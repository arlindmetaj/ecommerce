class FeaturedProducts {
  late final String image;
  late final String name;
  late final String description;
  late final double price;
  late final List<String> imageList;

  FeaturedProducts(
      {required this.image,
      required this.name,
      required this.description,
      required this.price,
      required this.imageList});

  static List<FeaturedProducts> featuredProducts = [
    FeaturedProducts(
      image: "assets/images/ff3.jpg",
      name: "Rolex",
      description:
          "Rolex Cosmograph Daytona Watch: Oystersteel - M116500LN-0002",
      price: 65.350,
      imageList: [
        "assets/images/ff3.jpg",
        "assets/images/ff3.jpg",
        "assets/images/ff3.jpg",
        "assets/images/ff3.jpg"
      ],
    ),
    FeaturedProducts(
      image: "assets/images/ff2.png",
      name: "Necklace",
      description: "Nice layered necklace, Feather, White, Rhodium plated",
      price: 75.350,
      imageList: [
        "assets/images/ff2.png",
        "assets/images/ff3.jpg",
        "assets/images/ff2.png",
        "assets/images/ff2.png"
      ],
    ),
    FeaturedProducts(
      image: "assets/images/ff4.jpg",
      name: "Beats by Dr. Dre",
      description: "Beats by Dr. Dre Beats EP On-Ear Headphones (Black)",
      price: 85.350,
      imageList: [
        "assets/images/ff4.jpg",
        "assets/images/ff4.jpg",
        "assets/images/ff3.jpg",
        "assets/images/ff4.jpg"
      ],
    ),
    FeaturedProducts(
      image: "assets/images/ff5.png",
      name: "Yeezy",
      description: "Yeezy 700 Vanta",
      price: 95.350,
      imageList: [
        "assets/images/ff5.png",
        "assets/images/ff5.png",
        "assets/images/ff5.png",
        "assets/images/ff3.jpg"
      ],
    ),
    FeaturedProducts(
      image: "assets/images/ff6.png",
      name: "Airpods",
      description: "Apple Airpods - Mobile Phone",
      price: 115.350,
      imageList: [
        "assets/images/ff6.png",
        "assets/images/ff3.jpg",
        "assets/images/ff6.png",
        "assets/images/ff6.png"
      ],
    ),
  ];
}

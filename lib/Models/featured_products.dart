class FeaturedProducts {
  late final String image;
  late final String description;
  late final double price;

  FeaturedProducts({required this.image, required this.description, required this.price});

  static List<FeaturedProducts> featuredProducts = [
    FeaturedProducts(image: "assets/images/ff3.jpg", description: "Rolex Cosmograph Daytona Watch: Oystersteel - M116500LN-0002", price: 65.350),
    FeaturedProducts(image: "assets/images/ff2.png", description: "Nice layered necklace, Feather, White, Rhodium plated", price: 75.350),
    FeaturedProducts(image: "assets/images/ff4.jpg", description: "Beats by Dr. Dre Beats EP On-Ear Headphones (Black)", price: 85.350),
    FeaturedProducts(image: "assets/images/ff5.png", description: "Yeezy 700 Vanta", price: 95.350),
    FeaturedProducts(image: "assets/images/ff6.png", description: "Apple Airpods - Mobile Phone", price: 115.350),
  ];
}
class LeastSelling {
  late final String image;
  late final String name;
  late final int price;

  LeastSelling({required this.image, required this.name, required this.price});

  static List<LeastSelling> leastSelling = [
    LeastSelling(image: "assets/images/l1.png", name: "Simple Leather Sunglasses Case", price: 126),
    LeastSelling(image: "assets/images/l2.png", name: "Simple Leather Sunglasses Case 2", price: 127),
    LeastSelling(image: "assets/images/l3.png", name: "Simple Leather Sunglasses Case 3", price: 128),
    LeastSelling(image: "assets/images/l4.png", name: "Simple Leather Sunglasses Case 4", price: 129),
  ];

}
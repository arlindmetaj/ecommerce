class NewArrivals{
  late final String image;
  late final String description;
  late final int price;

  NewArrivals({required this.image, required this.description, required this.price});

  static List<NewArrivals> newArrivals = [
    NewArrivals(image: "assets/images/a1.png", description: "Nike Hypervenom Phantom III", price: 149),
    NewArrivals(image: "assets/images/a2.png", description: "Nike Hypervenom Phantom III", price: 150),
    NewArrivals(image: "assets/images/a3.png", description: "Nike Hypervenom Phantom III", price: 151),
    NewArrivals(image: "assets/images/a4.png", description: "Nike Hypervenom Phantom III", price: 152),
    NewArrivals(image: "assets/images/a5.jpeg", description: "Nike Hypervenom Phantom III", price: 153),
  ];
}
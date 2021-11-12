class CategoryProducts {
  late final String image;
  late final String name;
  late final String description;

  CategoryProducts(
      {required this.image, required this.name, required this.description});

  static List<CategoryProducts> categoryProducts = [
    CategoryProducts(
        image: "assets/images/c1.png",
        name: "Automobile & Motorcycle",
        description: "View Sub-Categories | View Products"),
    CategoryProducts(
        image: "assets/images/c2.jpg",
        name: "Beauty, Health & Hair",
        description: "View Sub-Categories | View Products"),
    CategoryProducts(
        image: "assets/images/c3.png",
        name: "Cellphones & Accessories",
        description: "View Sub-Categories | View Products"),
    CategoryProducts(
        image: "assets/images/c4.png",
        name: "Home Decoration & Appliance",
        description: "View Sub-Categories | View Products"),
    CategoryProducts(
        image: "assets/images/c5.png",
        name: "Watches & Jewelry",
        description: "View Sub-Categories | View Products"),
  ];
}

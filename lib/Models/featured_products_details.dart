class FeaturedProductsDetails {
  late final String image;
  late final String description;
  late final String price;

  FeaturedProductsDetails({required this.image, required this.description, required this.price});

  static List<FeaturedProductsDetails> featuredProductsDetails = [
    FeaturedProductsDetails(image: "", description: "", price: ""),
    FeaturedProductsDetails(image: "", description: "", price: ""),
    FeaturedProductsDetails(image: "", description: "", price: ""),
    FeaturedProductsDetails(image: "", description: "", price: ""),
    FeaturedProductsDetails(image: "", description: "", price: ""),
  ];

}
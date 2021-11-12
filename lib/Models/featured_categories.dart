class FeaturedCategories {
  late final String image;
  late final String name;

  FeaturedCategories({required this.image, required this.name});

  static List<FeaturedCategories> featuredCategories = [
    FeaturedCategories(image: 'assets/images/f1.png', name: 'Automobile & Motorcycle'),
    FeaturedCategories(image: 'assets/images/f2.png', name: 'Beauty, Health & Hair'),
    FeaturedCategories(image: 'assets/images/f3.jpg', name: 'Technology Products'),
    FeaturedCategories(image: 'assets/images/f4.png', name: 'Tools'),
  ];
}
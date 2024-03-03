class Shoe {
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String type;

  Shoe({
    required this.name,
    required this.price,
    required this.description,
    required this.imagePath,
    required this.type,
  });
}

Map<String, List<String>> shoeBuildsToBrands = {
  'running': ['Nike', 'Adidas', 'New Balance'],
  'basketball': ['Nike', 'Jordan', 'Adidas'],
  'casual': ['Vans', 'Converse', 'Tommy '],
  // Add more builds and associated brands as needed
};

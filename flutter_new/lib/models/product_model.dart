class Product {
  final String id;
  final String name;
  final String description; // e.g., "7pcs, Price" or "1kg, Price"
  final String details;
  final double price;
  final String imageUrl;
  final String category;
  final String nutritions;
  final double rating;
  final int reviewsCount;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.details,
    required this.price,
    required this.imageUrl,
    required this.category,
    this.nutritions = '100gr',
    this.rating = 4.8,
    this.reviewsCount = 120,
    this.isFavorite = false,
  });
}

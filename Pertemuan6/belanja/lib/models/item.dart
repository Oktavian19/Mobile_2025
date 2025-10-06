class Item {
  final int id;
  final String name;
  final String description;
  final String brand;
  final String category;
  final String photoUrl;
  final double price;
  final int stock;
  final double rating;

  Item({
    required this.id,
    required this.name,
    required this.description,
    required this.brand,
    required this.category,
    required this.price,
    required this.photoUrl,
    required this.stock,
    required this.rating,
  });

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
      id: json['id'],
      name: json['title'],
      description: json['description'],
      brand: json['brand'] ?? '-',
      category: json['category'],
      price: (json['price'] as num).toDouble(),
      photoUrl: json['thumbnail'],
      stock: (json['stock'] as num).toInt(),
      rating: (json['rating'] as num).toDouble(),
    );
  }
}

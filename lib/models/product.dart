class Product {
  final String name;
  final String image;
  final String description;
  final double price;

  Product({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      name: json['name'],
      image: json['image'],
      description: json['description'],
      price: json['price'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'image': image,
      'description': description,
      'price': price,
    };
  }
}
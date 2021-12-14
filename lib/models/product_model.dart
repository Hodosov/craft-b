import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];

  static List<Product> product = [
    Product(
        name: "White Moon",
        category: 'Stout',
        imageUrl:
            "https://craftbeer78.ru/images_beers/434/500-craftbeer78.ru-white-moon-stout-new-rigas-brewery.jpg",
        price: 175,
        isRecommended: true,
        isPopular: false)
  ];
}

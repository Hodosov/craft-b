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

  static List<Product> products = [
    const Product(
        name: "MAUI PORTER",
        category: 'porter',
        imageUrl: 'http://jawsbeer.ru/img/user/439/src.png',
        price: 175,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: 'MOLOKO+',
        category: 'Stout',
        imageUrl:
            'https://thumb.tildacdn.com/tild6565-3934-4662-a239-383434306437/-/resize/254x/-/format/webp/moloko.png',
        price: 210,
        isPopular: false,
        isRecommended: true),
    const Product(
        name: 'RED MANIAC',
        category: 'ipa',
        imageUrl:
            'https://thumb.tildacdn.com/tild3037-3161-4961-a264-303734336433/-/resize/254x/-/format/webp/red_maniac.png',
        price: 250,
        isRecommended: true,
        isPopular: true),
    const Product(
        name: "JAWS APA",
        category: 'ipa',
        imageUrl: "http://jawsbeer.ru/img/user/612/src.png",
        price: 195,
        isRecommended: false,
        isPopular: true),
    const Product(
        name: 'FIBONACCI',
        category: 'ipa',
        imageUrl:
            "https://thumb.tildacdn.com/tild3361-6563-4064-b662-306434623866/-/resize/420x/-/format/webp/Fibonacci_05.png",
        price: 215,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: "IN BLOOM",
        category: "IPA",
        imageUrl:
            "https://thumb.tildacdn.com/tild6334-3439-4364-b631-663530613764/-/resize/254x/-/format/webp/in_bloom.png",
        price: 245,
        isRecommended: true,
        isPopular: false),
    const Product(
        name: "GIMME LOOT",
        category: "Stout",
        imageUrl:
            "https://thumb.tildacdn.com/tild3731-3635-4730-b562-663930376265/-/resize/414x/-/format/webp/GIMME_THE_LOOT.png",
        price: 225,
        isRecommended: false,
        isPopular: true)
  ];
}

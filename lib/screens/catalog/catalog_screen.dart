import 'package:crafts/models/model.dart';
import 'package:crafts/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => CatalogScreen(category: category));
  }

  final Category category;

  const CatalogScreen({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProduct = Product.products
        .where((element) =>
            element.category.toLowerCase() == category.name.toLowerCase())
        .toList();
    return Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: CustomAppBar(title: category.name),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: categoryProduct.length,
          itemBuilder: (BuildContext context, index) {
            return ProductCard(
              product: categoryProduct[index],
              widthFactor: 2.2,
            );
          },
        ),
        bottomNavigationBar: const CustomNavBar());
  }
}

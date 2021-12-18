import 'package:crafts/models/model.dart';
import 'package:crafts/widgets/widgets.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => WishListScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "WIshlist"),
      bottomNavigationBar: CustomNavBar(),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, childAspectRatio: 2.4),
        itemCount: Product.products.length,
        itemBuilder: (BuildContext context, index) {
          return ProductCard(
            product: Product.products[index],
            widthFactor: 1.1,
            leftPosition: 100,
            isWishList: true,
          );
        },
      ),
    );
  }
}

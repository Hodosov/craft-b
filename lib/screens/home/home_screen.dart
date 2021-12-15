import 'package:carousel_slider/carousel_slider.dart';
import 'package:crafts/models/category_model.dart';
import 'package:crafts/models/model.dart';
import 'package:crafts/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Craft-B"),
      bottomNavigationBar: CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                ),
                items: Category.categories
                    .map((category) => HeroCarouselCard(category: category))
                    .toList(),
              ),
            ),
            const SectionTitle(title: "Recomended"),
            ProductCarousel(products: Product.products.where((product) => product.isRecommended).toList()),
                 const SectionTitle(title: "Popular"),
            ProductCarousel(products: Product.products.where((product) => product.isPopular).toList())
          ],
        ),
      ),
    );
  }
}



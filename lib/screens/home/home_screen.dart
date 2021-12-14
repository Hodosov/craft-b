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
      body: Column(
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
          // Product card
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 150,
                child: Image.network(
                  Product.product[0].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 65,
                left: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.5  -10,
                  height: 70,
                  decoration: BoxDecoration(color: Colors.black.withAlpha(50)),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text(
                            Product.product[0].name,
                            style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

import 'package:crafts/models/model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2.5,
          height: 200,
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.contain,
          ),
        ),
        Positioned(
          
          top: 155,
          left: 5,
          child: Container(
            
            width: MediaQuery.of(context).size.width / 2.5  -10,
            height: 55,
            decoration: BoxDecoration(color: Colors.black.withAlpha(70),borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context).textTheme.headline5!.copyWith(color: Colors.white),
                        ),
                         Text(
                          '${product.price}',
                          style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.add_circle, color: Colors.white,)
                    ))
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

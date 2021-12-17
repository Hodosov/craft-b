import 'package:crafts/models/model.dart';
import 'package:crafts/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('this is route: ${settings.name}');
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName: 
        return ProductScreen.route(product: settings.arguments as Product);
       case WishListScreen.routeName: 
        return WishListScreen.route();
         case CatalogScreen.routeName: 
        return CatalogScreen.route(category: settings.arguments as Category);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: 'error'),
        builder: (_) => Scaffold(
                appBar: AppBar(
              title: const Text('Error'),
            )));
  }
}

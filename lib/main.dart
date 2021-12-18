import 'package:crafts/blocs/wishlist/wishlist_bloc.dart';
import 'package:crafts/config/app_router.dart';
import 'package:crafts/config/theme.dart';
import 'package:crafts/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => WishlistBlock()..add(StartWishlist()))
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Craft-B",
          theme: theme(),
          onGenerateRoute: AppRouter.onGenerateRoute,
          initialRoute: HomeScreen.routeName,
        ));
  }
}

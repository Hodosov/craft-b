import 'package:crafts/config/app_router.dart';
import 'package:crafts/screens/screens.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Craft-B",
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomeScreen(),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: HomeScreen.routeName,
    );
  }
}


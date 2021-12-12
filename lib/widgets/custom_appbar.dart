import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  const CustomAppBar({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        width: 250,
        alignment: Alignment.center,
          color: Colors.black,
          child: Text(title, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),),
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
          iconTheme: IconThemeData(color: Colors.black),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite))],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50);
}

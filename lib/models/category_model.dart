import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});

  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    Category(
        name: 'Stout',
        imageUrl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/stout-beer-1541446329.jpg?crop=1xw:1xh;center,top&resize=1200:*'),
    Category(
        name: "Ipa",
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKPqGqyzzcc_D0ZOtcdNvh_N-2frgkBd4_Bg&usqp=CAU'),
    Category(
        name: 'Soure ale',
        imageUrl:
            'https://cdn.pastemagazine.com/www/articles/sour%20beer%202017%20main%20%28Custom%29.jpeg')
  ];
}

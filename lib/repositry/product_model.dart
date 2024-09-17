import 'package:aliexpress_clone/repositry/category.dart';

class ProductModel {
  final String name;
  final double price;
  final bool isChoice;
  final bool isSuperDeal;
  final bool isBigSale;
  final String image;
  final List<ProductCategory> categories;
  final int sold;

  ProductModel({
    required this.name,
    required this.price,
    required this.isChoice,
    required this.isSuperDeal,
    required this.isBigSale,
    required this.image,
    required this.categories,
    required this.sold,
  });
}

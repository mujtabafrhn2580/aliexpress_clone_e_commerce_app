import 'package:aliexpress_clone/repositry/category.dart';
import 'package:aliexpress_clone/repositry/product_model.dart';

List<ProductModel> dummyData = [
  ProductModel(
      name: 'Gucci Sneakers',
      price: 1000,
      isChoice: true,
      isSuperDeal: true,
      isBigSale: false,
      image: 'shoes2.jpeg',
      sold: 100,
      categories: [
        ProductCategory.explore,
        ProductCategory.men,
        ProductCategory.women,
        ProductCategory.shoes,
      ]),
  ProductModel(
      name: 'RC Super Speed Race Car',
      price: 200,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: false,
      image: 'rc_car_1.jpeg',
      sold: 50,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'RC Fast And Furious Race Car',
      price: 450,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: false,
      image: 'rc_car_2.jpeg',
      sold: 1000,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'RC Hyper Speed Race Car',
      price: 200,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: false,
      image: 'rc_car_3.jpeg',
      sold: 700,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'RC Fighter Plane',
      price: 90.88,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: false,
      image: 'rc_plane_1.jpeg',
      sold: 90,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'RC Super Aeroplane',
      price: 70,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: false,
      image: 'rc_plane_2.jpeg',
      sold: 78,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'RC Disney Plane',
      price: 200,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: false,
      image: 'rc_plane_3.jpeg',
      sold: 300,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'Black Chain Watch',
      price: 50,
      isChoice: true,
      isSuperDeal: true,
      isBigSale: false,
      image: 'watches_1.jpeg',
      sold: 400,
      categories: [
        ProductCategory.explore,
        ProductCategory.kids,
      ]),
  ProductModel(
      name: 'Leather Strap Watch',
      price: 30,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: true,
      image: 'watches_2.jpeg',
      sold: 1200,
      categories: [
        ProductCategory.explore,
        ProductCategory.men,
        ProductCategory.watch,
      ]),
  ProductModel(
      name: 'Mens Shirt',
      price: 30,
      isChoice: true,
      isSuperDeal: false,
      isBigSale: true,
      image: 'shirt_1.jpeg',
      sold: 1200,
      categories: [
        ProductCategory.explore,
        ProductCategory.men,
      ]),
];

import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryIconName;
  final String categoryName;
  final int categoryProductsCount;
  final Color categoryBackgroundColor;

  CategoryModel({
    required this.categoryIconName,
    required this.categoryName,
    required this.categoryProductsCount,
    required this.categoryBackgroundColor,
  });

  static List<CategoryModel> allCategories = [
    CategoryModel(
      categoryIconName: "assets/images/fruit.png",
      categoryName: "Fruit",
      categoryProductsCount: 112,
      categoryBackgroundColor: const Color(0xFFEBF4F1),
    ),
    CategoryModel(
      categoryIconName: "assets/images/vegie.png",
      categoryName: "Vegie",
      categoryProductsCount: 98,
      categoryBackgroundColor: const Color(0xFFF3F3EA),
    ),
    CategoryModel(
      categoryIconName: "assets/images/bread.png",
      categoryName: "Bread",
      categoryProductsCount: 58,
      categoryBackgroundColor: const Color(0xFFF3E9DD),
    ),
    CategoryModel(
      categoryIconName: "assets/images/meat.png",
      categoryName: "Meat",
      categoryProductsCount: 52,
      categoryBackgroundColor: const Color(0xFFF8ECEC),
    ),
    CategoryModel(
      categoryIconName: "assets/images/cheese.png",
      categoryName: "Cheese",
      categoryProductsCount: 112,
      categoryBackgroundColor: const Color(0xFFF8F5DE),
    ),
    CategoryModel(
      categoryIconName: "assets/images/drinks.png",
      categoryName: "Drinks",
      categoryProductsCount: 102,
      categoryBackgroundColor: const Color(0xFFF9E9D2),
    ),
    CategoryModel(
      categoryIconName: "assets/images/flowers.png",
      categoryName: "Flowers",
      categoryProductsCount: 112,
      categoryBackgroundColor: const Color(0xFFEBF1F4),
    ),
    CategoryModel(
      categoryIconName: "assets/images/fish.png",
      categoryName: "Fish",
      categoryProductsCount: 112,
      categoryBackgroundColor: const Color(0xFFD7F3F9),
    ),
  ];

  static List<CategoryModel> Fruitslist = [
    CategoryModel(
      categoryIconName: 'assets/images/mango.png',
      categoryName: 'Mango',
      categoryProductsCount: 2,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/oranges.png',
      categoryName: 'Oranges',
      categoryProductsCount: 3,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/strawbery.png',
      categoryName: 'Oranges',
      categoryProductsCount: 4,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/uzum.png',
      categoryName: 'Vinograd',
      categoryProductsCount: 3,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
  ];
  static List<CategoryModel> Vegielist = [
    CategoryModel(
      categoryIconName: 'assets/images/brocoli.png',
      categoryName: 'Brocoli',
      categoryProductsCount: 5,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/redbell.png',
      categoryName: 'Red Papaer',
      categoryProductsCount: 7,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/chili.png',
      categoryName: 'Chili',
      categoryProductsCount: 1,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/tomato.png',
      categoryName: 'Tomato',
      categoryProductsCount: 2,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
  ];
  static List<CategoryModel> breadlist = [
    CategoryModel(
      categoryIconName: 'assets/images/slicebread.png',
      categoryName: 'Slice Bread',
      categoryProductsCount: 3,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/baguete.png',
      categoryName: 'Baguete',
      categoryProductsCount: 7,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/donut.png',
      categoryName: 'Donut',
      categoryProductsCount: 1,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
  ];

  static List<CategoryModel> meatList = [
    CategoryModel(
      categoryIconName: 'assets/images/bufallo.png',
      categoryName: 'Buffalo Meat',
      categoryProductsCount: 3,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/chicken.png',
      categoryName: 'Chicken Meat',
      categoryProductsCount: 7,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
    CategoryModel(
      categoryIconName: 'assets/images/burger.png',
      categoryName: 'Burger Patty',
      categoryProductsCount: 1,
      categoryBackgroundColor: Color(0xFFF1F4F3),
    ),
  ];
}

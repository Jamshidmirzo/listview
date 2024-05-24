import 'package:flutter/material.dart';
import 'package:listview/data/models/category_model.dart';

class ListViewItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const ListViewItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: categoryModel.categoryBackgroundColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        children: [
          Image.asset(
            categoryModel.categoryIconName,
            width: 45,
            height: 45,
          ),
          Text(
            categoryModel.categoryName,
            style: const TextStyle(
              color: Color(0xFF194B38),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "${categoryModel.categoryProductsCount} items",
            style: const TextStyle(
              color: Color(0xFF777777),
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

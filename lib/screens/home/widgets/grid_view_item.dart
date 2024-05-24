import 'package:flutter/material.dart';
import 'package:listview/data/models/category_model.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class GridViewItem extends StatelessWidget {
  final CategoryModel categoryModel;
  const GridViewItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return ZoomTapAnimation(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: categoryModel.categoryBackgroundColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            Center(
              child: Image.asset(
                categoryModel.categoryIconName,
                width: 70,
                height: 70,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryModel.categoryName,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${categoryModel.categoryProductsCount} items",
                  style: const TextStyle(
                    fontSize: 16,
                    height: 0.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

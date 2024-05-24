import 'package:flutter/material.dart';
import 'package:listview/data/models/category_model.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Gridiviewsearch extends StatelessWidget {
  final CategoryModel categoryModel;
  Gridiviewsearch({required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 215,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: categoryModel.categoryBackgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(
              categoryModel.categoryIconName,
              width: 100,
              height: 100,
            ),
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  categoryModel.categoryName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '\$${categoryModel.categoryProductsCount}',
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ZoomTapAnimation(
                        child: Container(
                            width: 53,
                            height: 41,
                            decoration: const BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(28))),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                            )))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

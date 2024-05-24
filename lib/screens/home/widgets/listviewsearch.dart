import 'package:flutter/material.dart';
import 'package:listview/data/models/category_model.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Listviewsearch extends StatelessWidget {
  final CategoryModel categoryModel;
  Listviewsearch({required this.categoryModel});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
              color: categoryModel.categoryBackgroundColor,
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(25)),
          child: Row(
            children: [
              Image.asset(
                categoryModel.categoryIconName,
                width: 100,
                height: 100,
              ),
              const SizedBox(
                width: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      categoryModel.categoryName,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${categoryModel.categoryProductsCount}',
                      style: const TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
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
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

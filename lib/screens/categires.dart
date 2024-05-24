import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listview/data/models/category_model.dart';
import 'package:listview/data/models/categoryite.dart';
import 'package:listview/screens/home/home_single_screen.dart';
import 'package:listview/screens/home/widgets/gridiviewsearch.dart';
import 'package:listview/screens/home/widgets/listviewsearch.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Categires extends StatefulWidget {
  const Categires({super.key});

  @override
  State<Categires> createState() => _CategiresState();
}

class _CategiresState extends State<Categires> {
  bool isGridViewWidget = true;
  int selectedCategoryIndex = 0;
  String categoryname = '';

  List<CategoryModel>? items;
  Widget buildCategoryItems() {
    switch (selectedCategoryIndex) {
      case 0:
        items = CategoryModel.Fruitslist;
        categoryname = 'Fruits';
        break;
      case 1:
        items = CategoryModel.Vegielist;
        categoryname = 'Vegie';
        break;
      case 2:
        items = CategoryModel.breadlist;
        break;
      case 3:
        items = CategoryModel.meatList;
        break;
    }

    return isGridViewWidget
        ? Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: items!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                CategoryModel categoryModel = items![index];
                return Gridiviewsearch(categoryModel: categoryModel);
              },
            ),
          )
        : Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: items!.length,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 17);
              },
              itemBuilder: (context, index) {
                CategoryModel categoryModel = items![index];
                return Listviewsearch(categoryModel: categoryModel);
              },
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              margin: const EdgeInsets.all(20),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.card_travel_outlined),
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.green,
                      ),
                      labelText: 'Search fresh Fruits',
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (ctx) {
                            return HomeSingleScreen();
                          },
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.add,
                      weight: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          SizedBox(
            height: 100,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              scrollDirection: Axis.horizontal,
              children: [
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 0;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Fruits',
                    color: const Color(0xFFEBF4F1),
                    id: 0,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 1;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Vegie',
                    color: const Color(0xFFF3F3EA),
                    id: 1,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 2;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Bread',
                    color: const Color(0xFFF3E9DD),
                    id: 2,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 3;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Meat',
                    color: const Color(0xFFF8ECEC),
                    id: 3,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 4;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Cheese',
                    color: const Color(0xFFF8F5DE),
                    id: 4,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 5;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Drinks',
                    color: const Color(0xFFF9E9D2),
                    id: 5,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 6;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Flowers',
                    color: const Color(0xFFEBF1F4),
                    id: 6,
                  ),
                ),
                ZoomTapAnimation(
                  onTap: () {
                    selectedCategoryIndex = 7;
                    setState(() {});
                  },
                  child: Categoryitem(
                    name: 'Fish',
                    color: const Color(0xFFD7F3F9),
                    id: 7,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Fresh $categoryname",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    isGridViewWidget = !isGridViewWidget;
                    setState(() {});
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/grid_view.svg",
                    width: 25,
                    height: 25,
                  ),
                ),
              ],
            ),
          ),
          buildCategoryItems(),
        ],
      ),
    );
  }
}

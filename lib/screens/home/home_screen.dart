import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listview/data/models/category_model.dart';
import 'package:listview/screens/home/widgets/grid_view_item.dart';
import 'package:listview/screens/home/widgets/list_view_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isGridViewWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "All Catregories",
                    style: TextStyle(
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
            const SizedBox(height: 27),
            isGridViewWidget
                ? Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      itemCount: CategoryModel.allCategories.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (context, index) {
                        CategoryModel categoryModel =
                            CategoryModel.allCategories[index];
                        return GridViewItem(categoryModel: categoryModel);
                      },
                    ),
                  )
                : Expanded(
                    child: ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      itemCount: CategoryModel.allCategories.length,
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 17);
                      },
                      itemBuilder: (context, index) {
                        CategoryModel categoryModel =
                            CategoryModel.allCategories[index];
                        return ListViewItem(categoryModel: categoryModel);
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}

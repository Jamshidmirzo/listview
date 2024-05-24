import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:listview/data/models/category_model.dart';
import 'package:listview/screens/categires.dart';
import 'package:listview/screens/home/widgets/grid_view_item.dart';
import 'package:listview/screens/home/widgets/list_view_item.dart';

class HomeSingleScreen extends StatefulWidget {
  const HomeSingleScreen({super.key});

  @override
  State<HomeSingleScreen> createState() => _HomeSingleScreenState();
}

class _HomeSingleScreenState extends State<HomeSingleScreen> {
  bool isGridViewWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (ctx) {
                              return Categires();
                            },
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.next_week_outlined,
                        color: Colors.red,
                        size: 50,
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
                  ? GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
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
                    )
                  : ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
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
            ],
          ),
        ),
      ),
    );
  }
}

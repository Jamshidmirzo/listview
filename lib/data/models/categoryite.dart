import 'package:flutter/material.dart';

class Categoryitem extends StatelessWidget {
  Color color;
  String name;
  int id;
  Categoryitem({required this.name, required this.color, required this.id});
  List allphoto = [
    "assets/images/fruit.png",
    'assets/images/vegie.png',
    'assets/images/bread.png',
    'assets/images/meat.png',
    'assets/images/cheese.png',
    'assets/images/drinks.png',
    'assets/images/flowers.png',
    'assets/images/fish.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(23),
              ),
              alignment: Alignment.center,
              child: Image.asset(
                allphoto[id],
                width: 25,
                height: 25,
              ),
            ),
            Text(
              name,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
       const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}

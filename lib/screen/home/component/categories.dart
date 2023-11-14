import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Assasin",
    "Mage",
    "Fighter",
    "Carry",
    "Tank",
    "Support"
  ];
  int select = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => Build(index)),
    );
  }

  Widget Build(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          select  = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:40.0),
        child: Text(
          categories[index],
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 19.0,
            color: select == index ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }
}

import 'package:final_project/screen/home/component/categories.dart';
import 'package:flutter/material.dart';
import 'package:final_project/models/Hero.dart';
import '../../detail/detail_.dart';
import 'ItemCard.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: SizedBox(
            height: 60,
            child: Text(
              "Arena of Valor HERO",
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: GridView.builder(
              itemCount: heros.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                  childAspectRatio: 1),
              itemBuilder: (context, index) => ItemCard(
                hero: heros[index],
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Detail(
                      hero: heros[index],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

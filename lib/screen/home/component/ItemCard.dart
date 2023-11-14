import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../models/Hero.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.hero, required this.press});

  final MyHero hero;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: hero.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(hero.image),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0 /3),
            child: Text(
              hero.type,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
            ),
          ),
          Text(
            hero.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
import 'package:final_project/models/Hero.dart';
import 'package:flutter/material.dart';

class HeroandImage extends StatelessWidget {
  const HeroandImage({
    super.key,
    required this.hero,
  });

  final MyHero hero;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "My favorite Hero",
            style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Text(
            hero.title,
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: hero.type,
                      style: Theme.of(context)
                          .textTheme
                          .headlineLarge!
                          .copyWith(
                          color: Colors.black,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(hero.image,
                      fit: BoxFit.scaleDown,
                      width: 500,
                      height: 500),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
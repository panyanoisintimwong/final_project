import 'package:final_project/models/Hero.dart';
import 'package:final_project/screen/detail/component/hero_title.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final MyHero hero;

  const Body({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height - kToolbarHeight,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.5),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20, right: 20.0),
                  //height: 500,
                ),
                HeroandImage(hero: hero),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

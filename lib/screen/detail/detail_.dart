
import 'package:final_project/screen/detail/component/body.dart';
import 'package:flutter/material.dart';
import '../../models/Hero.dart';

class Detail extends StatelessWidget {
  final MyHero hero;

  const Detail({super.key, required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(hero: hero),
      backgroundColor: hero.color,
      appBar: AppBar(
        backgroundColor: hero.color ,
        elevation: 0,
      ),
    );
  }
}

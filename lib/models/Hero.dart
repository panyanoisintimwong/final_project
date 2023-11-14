import 'package:flutter/material.dart';

class MyHero {
  final String image;
  final String title;
  final String type;
  final int id;
  final Color color;

  MyHero(
      {required this.image,
      required this.title,
      required this.type,
      required this.id,
      required this.color});
}

List<MyHero> heros = [
  MyHero(
      id: 1,
      title: "Aoi",
      type: "Assassin",
      image: "assets/images/hero_1.png",
      color: Color(0xFFE06292),
      ),
  MyHero(
      id: 2,
      title: "Yue",
      type: "Mage",
      image: "assets/images/hero_2.png",
      color: Colors.lightBlueAccent,
      ),
  MyHero(
      id: 3,
      title: "Yan",
      type: "Fighter",
      image: "assets/images/hero_3.png",
      color: Colors.amberAccent,
      ),
  MyHero(
      id: 4,
      title: "Elsu",
      type: "Carry",
      image: "assets/images/hero_4.png",
      color: Colors.deepOrange,
      ),
  MyHero(
      id: 5,
      title: "Maloch",
      type: "Tank",
      image: "assets/images/hero_5.png",
      color: Colors.deepPurpleAccent,
      ),
  MyHero(
      id: 6,
      title: "Krizzix",
      type: "Support",
      image: "assets/images/hero_6.png",
      color: Colors.green,
      ),
  MyHero(
    id: 7,
    title: "Alice",
    type: "Support",
    image: "assets/images/hero_7.png",
    color: Colors.pinkAccent,
  ),
  MyHero(
    id: 8,
    title: "Mina",
    type: "Tank",
    image: "assets/images/hero_8.png",
    color: Colors.orangeAccent,
  ),
  MyHero(
    id: 9,
    title: "Bright",
    type: "Carry",
    image: "assets/images/hero_9.png",
    color: Colors.yellowAccent,
  ),
  MyHero(
    id: 10,
    title: "Murad",
    type: "Assasin",
    image: "assets/images/hero_10.png",
    color: Colors.blueAccent,
  ),
];

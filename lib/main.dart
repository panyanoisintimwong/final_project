import 'package:final_project/screen/home/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "630710386 Project",
      theme: ThemeData(
        useMaterial3: true,
      ),
        home: Homepage(),
    );
  }
}

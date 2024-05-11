import 'package:flutter/material.dart';
import 'package:pizza_app/pizza_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'PoetsenOne'
      ),
      home:  const PizzaHome(),
    );
  }
}



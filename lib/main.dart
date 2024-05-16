import 'package:flutter/material.dart';
import 'package:pizza_app/screens/pizza_home.dart';
import 'package:pizza_app/screens/cheese_pizza.dart';
import 'package:pizza_app/screens/fries_pizza.dart';
import 'package:pizza_app/screens/vegetable_pizza.dart';
import 'package:pizza_app/screens/web_view.dart';

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
        fontFamily: 'PoetsenOne',
      ),
      onGenerateRoute: (settings)
      {
        switch(settings.name)
            {
          case '/':
            return MaterialPageRoute(builder: (_)=> const PizzaHome());
          case '/vegetablePizza':
            return MaterialPageRoute(builder: (_)=> const VegetablePizza());
          case '/cheesePizza' :
            return MaterialPageRoute(builder: (_)=> const CheesePizza());
          case '/fries':
            return MaterialPageRoute(builder: (_)=> const FriesPizza());
          case '/webView':
            return MaterialPageRoute(builder: (_)=> WebView(uri: (settings.arguments as Map)['uri'],));
          default:
            return null;
        }
        },
    );
  }
}



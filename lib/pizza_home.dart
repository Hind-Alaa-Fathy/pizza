import 'package:flutter/material.dart';
import 'package:pizza_app/shared_component/button_in_home.dart';

import 'shared_component/app_text.dart';

class PizzaHome extends StatelessWidget {
  const PizzaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 6,
        backgroundColor: const Color.fromRGBO(248, 151, 28, 1.0),
        title: textInApp(data: "WoW Pizza",textColor: Colors.white70,fontWeight: FontWeight.bold),
        actions: [
         Image.asset("assets/images/twitter-logo.png"),
          IconButton(onPressed: (){}, icon: const Icon(Icons.facebook_outlined,color: Colors.white,size: 39,))
        ],
      ),
      body:  Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30,left: 5,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(text: 'Vegetable Pizza',),
                Button(text: 'Cheese Pizza',),
                Button(text: 'Fries',),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
            child: Image.asset("assets/images/pizza-meal.jpg",),
          ),
          const SizedBox(height: 40,),
          textInApp(data: "Hi,I'm the Pizza Assistant\nwhat can I help you order?", textColor: Colors.grey.shade700,fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}

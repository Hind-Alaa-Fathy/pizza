import 'package:flutter/material.dart';
import 'package:pizza_app/shared_component/app_header_widget.dart';
import '../shared_component/app_text.dart';

class PizzaHome extends StatelessWidget {
  const PizzaHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body:  Column(
        children: [
          headerButtons(context),
           Padding(
            padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
            child: Container(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                image: const DecorationImage(image: AssetImage("assets/images/pizza-meal.jpg"),fit: BoxFit.cover),
              ),),
                     ),
          const SizedBox(height: 40,),
          textInApp(data: "Hi,I'm the Pizza Assistant\nwhat can I help you order?", textColor: Colors.grey.shade700,fontWeight: FontWeight.bold)
        ],
      ),
    );
  }
}

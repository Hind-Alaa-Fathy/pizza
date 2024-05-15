import 'package:flutter/material.dart';
import '../shared_component/app_header_widget.dart';

class VegetablePizza extends StatelessWidget {
   const VegetablePizza({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          headerButtons(context),
          Image.asset("assets/images/Vegetable Pizza.png",width: 550,height: 450,),
        ],
      ),
    );
  }
}
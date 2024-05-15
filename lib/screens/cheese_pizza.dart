import 'package:flutter/material.dart';
import '../shared_component/app_header_widget.dart';

class CheesePizza extends StatelessWidget {
  const CheesePizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          headerButtons(context),
          Image.asset("assets/images/Cheese Pizza.png",width: 550,height: 450,),
        ],
      ),
    );
  }
}
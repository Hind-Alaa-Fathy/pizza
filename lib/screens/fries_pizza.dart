import 'package:flutter/material.dart';
import '../shared_component/app_header_widget.dart';

class FriesPizza extends StatelessWidget {
  const FriesPizza({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context,),
      body: Column(
        children: [
          headerButtons(context),
          Image.asset("assets/images/Box of Fries.png",width: 550,height: 450,),

        ],
      ),
    );
  }
}
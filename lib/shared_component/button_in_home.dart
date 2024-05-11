import 'package:flutter/material.dart';

import 'app_text.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(onPressed: (){},
      style: OutlinedButton.styleFrom(
          elevation: 3,
          backgroundColor: Colors.white,
          padding: const EdgeInsets.all(9),
          shadowColor: Colors.white70
      ), child: textInApp(data: text, textColor: Colors.orange,fontWeight: FontWeight.bold,fontSize: 21),);
  }
}

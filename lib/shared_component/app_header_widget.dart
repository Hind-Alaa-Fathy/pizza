import 'package:flutter/material.dart';
import 'app_text.dart';
import 'button_in_app.dart';

PreferredSizeWidget appBar(context) {
  return AppBar(
    toolbarHeight: 90,
    leading: Row(
      children: [
        const SizedBox(width: 10,),
        Hero(
            tag: "app logo",
            flightShuttleBuilder: (flightContext, animation, flightDirection, fromHeroContext, toHeroContext) {
              return Material(
                color: Colors.transparent,
                shadowColor: Colors.deepOrange,
                  child: textInApp(data: "WoW Pizza",textColor: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),
              );
            },

            child: textInApp(data: "WoW Pizza",textColor: Colors.white70,fontWeight: FontWeight.bold)),
      ],
    ),
    leadingWidth: 300,
    elevation: 6,
    backgroundColor: const Color.fromRGBO(248, 151, 28, 1.0),
    actions: [
      InkWell(
          onTap: (){
          Navigator.pushNamed(context, '/webView',arguments: {'uri': "https://twitter.com/"});
          },
          child: Image.asset("assets/images/twitter-logo.png",height: 60,)),
      const SizedBox(width: 5,),
      IconButton(onPressed: (){
        Navigator.pushNamed(context, '/webView',arguments: {'uri': "https://www.facebook.com/"});

      }, icon: const Icon(Icons.facebook_outlined,color: Colors.white,size: 39,)),
      const SizedBox(width: 5,),

    ],
  );
}

Widget headerButtons(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(top: 30, left: 5, right: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Button(
          text: 'Vegetable Pizza',
          onPressed: () {
            Navigator.pushNamed(context, '/vegetablePizza',);
          },

        ),
        Button(
          text: 'Cheese Pizza',
          onPressed: () {
            Navigator.pushNamed(context, '/cheesePizza',);
          },
        ),
        Button(
          text: 'Fries',
          onPressed: () {
            Navigator.pushNamed(context, '/fries',);
          },
        ),
      ],
    ),
  );
}

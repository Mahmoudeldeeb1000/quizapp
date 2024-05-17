import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/core/utils/app_images.dart';
import 'package:quizapp/fetures/home/views/Home.dart';


class Splash_Screen extends StatefulWidget{
  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override

  void initState() {

    super.initState();
    Future.delayed(const Duration(
        seconds: 3
    ) , ( ) {

      Navigator.push(context, MaterialPageRoute(builder: (C) {
        return HomeScreen();
      } ));
    });
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         Align(
           alignment: Alignment.topLeft,
           child: Image.asset(AppImages.up,
             height: 252,
             width: 265,
           ),
         ),
         Spacer(),

         ZoomIn(
           child: Center(

               child: Image.asset(AppImages.logo,
                 height:59,
                 width: 231,
               ),

           ),
         ),
         Spacer(),
         Align(
           alignment:Alignment.bottomRight,
           child: Image.asset(AppImages.down,
             height: 252,
             width: 265,
           ),
         ),
       ],
     ),
   );
  }
}
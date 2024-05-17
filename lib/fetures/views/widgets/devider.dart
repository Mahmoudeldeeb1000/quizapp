import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/core/utils/app_color.dart';

class Home_Devider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Divider(
        color:Appcolor.primarycolor ,
        endIndent: 52,
        indent: 52,
      );
  }

}
import 'package:flutter/material.dart';
class radioo extends StatefulWidget {
  final String Title;
  radioo({ required this.Title});
  @override
  State<radioo> createState() => _radiooState();
}

class _radiooState extends State<radioo> {
  int _value =0;
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.rtl,
      children: [
        Radio(
          value: 1,
          groupValue: _value,
          onChanged:(value){
            setState(() {
              _value=value!;
            });
            if (_value==value){
              score++;
            }
          },
        ),
        Text("$Title"),
      ],
    );

  }
}
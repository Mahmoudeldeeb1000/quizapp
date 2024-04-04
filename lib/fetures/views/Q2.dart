import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/fetures/views/Home.dart';

class Question2 extends StatefulWidget{
  @override
  State<Question2> createState() => _Question2State();
}

class _Question2State extends State<Question2> {
  int _value=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 375,
            height: 125,
            decoration: BoxDecoration(
                color: Color(0xff006672),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )
            ),
            child: Center(
              child: Text(
                "Quiz App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            '''
                  من الكتابات الدينية التي ظهرت في عصر الدولة القديمة
            هي ..من الكتابات الدينية التي ظهرت في عصر الدولة
       .. القديمة هي   
          ''',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xff006672),
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          Divider(
            color: Color(0xff006672) ,
            endIndent: 52,
            indent: 52,
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Radio(
                value: 1,
                groupValue: _value,
                onChanged:(value){
                  setState(() {
                    _value=value!;
                  });
                },
              ),
              Text("نصوص الأهرام"),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Radio(
                value: 2,
                groupValue: _value,
                onChanged:(value){
                  setState(() {
                    _value=value!;
                  });
                },
              ),
              Text("نصوص التوابيت"),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Radio(
                value:3 ,
                groupValue: _value,
                onChanged:(value){
                  setState(() {
                    _value=value!;
                  }
                  );
                },
              ),
              Text("نصوص الأهرام"),
            ],
          ),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Radio(
                value: 4,
                groupValue: _value,
                onChanged:(value){
                  setState(() {
                    _value=value!;
                  });
                },

              ),
              Text("نصوص الأهرام"),
            ],
          ),
          Divider(
            color: Color(0xff006672) ,
            endIndent: 52,
            indent: 52,
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Question1(),
                )
                );
              } ,
              child: Text("ارسال"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff006672),
                  minimumSize: Size(110, 40),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )
              )
          ),
          SizedBox(height: 30,),
          Text("(6/6)"),
        ],
      ),
    );
  }
}
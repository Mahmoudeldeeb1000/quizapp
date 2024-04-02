import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/radio.dart';
import 'Q2.dart';


class Question1 extends StatefulWidget{
  @override
  State<Question1> createState() => _Question1State();
}
class _Question1State extends State<Question1> {

  int score =0;

  List<Map<String,dynamic>> questions=[
    {
      "title" : "question 1",
      "answers" : [ "answer1", "answer2"]
    },
    {
      "title" : "question 1",
      "answers" : [ "answer1", "answer2","answer3"]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
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
         ...questions[0]["answers"].map((answer){
           radioo(
             Title: answer,
           );
         }),
          Divider(
            color: Color(0xff006672) ,
            endIndent: 52,
            indent: 52,
          ),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Question2(),
                )
                );
              } ,
              child: Text("التالى"),
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
          Text("(1/6)"),
        ],
      ),
    );
  }
}
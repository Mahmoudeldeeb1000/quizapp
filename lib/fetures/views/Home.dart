import 'package:flutter/material.dart';
import 'package:quizapp/core/utils/app_color.dart';
import 'package:quizapp/core/utils/app_text.dart';
import 'package:quizapp/radio.dart';
import 'Q2.dart';


class Question1 extends StatefulWidget{
  @override
  State<Question1> createState() => _Question1State();
}
class _Question1State extends State<Question1> {
  int score =1;

  // List<Map<String,dynamic>> questions=[
  //   {
  //     "title" : "question 1",
  //     "answers" : [ "answer1", "answer2"]
  //   },
  //   {
  //     "title" : "question 2",
  //     "answers2" : [ "answer1", "answer2","answer3"]
  //   },
  // ];
  List<String> Questions = [
    "اين تقع كفر الزيات؟",
    "اين تقع الغربيه؟",
    "اين تقع مصر؟",
    "اين تقع افريقيا؟",
  ];
  int questionindex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 125,
            decoration: BoxDecoration(
                color: Appcolor.primarycolor ,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                )
            ),
            child: Center(
              child: Text(
                AppTexts.appname,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Appcolor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(Questions[questionindex]),
          Divider(
            color:Appcolor.primarycolor ,
            endIndent: 52,
            indent: 52,
          ),
       // ...questions[0]["answers"].map((answers){
       //          return   radioo(
       //         title: answers,
       //       );
       //
       //     }) ,

          Divider(
            color: Color(0xff006672) ,
            endIndent: 52,
            indent: 52,
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed:(){
                    setState(() {

                    });
                    if( questionindex > 0){

                      questionindex--;
                      score--;
                    }
                  } ,
                  child: Text(AppTexts.last),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolor.primarycolor,
                      minimumSize: Size(110, 40),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )
                  )
              ),
              SizedBox(width: 50,),
              ElevatedButton(
                  onPressed:(){
                    setState(() {

                    });
                    if( questionindex < Questions.length-1){

                      questionindex++;
                      score++;
                    }
                  } ,
                  child: Text( questionindex== Questions.length-1? AppTexts.send:AppTexts.next),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolor.primarycolor,
                      minimumSize: Size(110, 40),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )
                  )
              ),


            ],
          ),
          SizedBox(height: 30,),
          Text("($score/4)",
              textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
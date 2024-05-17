import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/core/utils/app_color.dart';
import 'package:quizapp/core/utils/app_text.dart';
import 'package:quizapp/fetures/check_answer/views/check_answers.dart';
import 'package:quizapp/fetures/home/models/question%20_model.dart';
class ResultDialog extends StatelessWidget {
  const ResultDialog({ required this.score, required this.length,this.click,required this.questions});

  final int score;
  final int length;
  final void Function()?  click ;
  final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Appcolor.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [



          IconButton(onPressed: (  ) {
            Navigator.pop(context);
          }, icon: Icon(Icons.close)),


          Center(
            child: Container(
              padding: EdgeInsets.symmetric(
                  vertical: 32 ,
                  horizontal: 94
              ),
              decoration: BoxDecoration(
                  color: Appcolor.containerGrey,
                  border: Border.all(
                      color: Appcolor.primarycolor
                  )
              ),
              child: Column(
                children: [
                  Text(AppTexts.result),
                  Text("${score}/${length*10}") ,

                ],
              ),
            ),
          ),
          SizedBox(
              height: 24
          ),
          Center(
            child: ElevatedButton(
              onPressed:click ,
            child:Text(AppTexts.reset,style: TextStyle( color: Appcolor.white),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.primarycolor,
                  minimumSize: Size(110, 40),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )
              )
              ,)
          ) ,
          SizedBox(
              height: 10
          ),
          Center(
              child: ElevatedButton(
                onPressed:(){
                  Navigator.push(context, MaterialPageRoute(builder: (C) {
                  return CheckAnswer(
                    questions: questions,
                  );
                }));
                  },
                child:Text(AppTexts.review, style: TextStyle(color: Appcolor.white),),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolor.primarycolor,
                    minimumSize: Size(110, 40),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    )
                )
                ,)
          ) ,
        ],
      ),


    );
  }
}
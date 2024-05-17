
import 'package:flutter/material.dart';
import 'package:quizapp/core/utils/app_color.dart';
import 'package:quizapp/core/utils/app_text.dart';
import 'package:quizapp/fetures/check_answer/views/check_answers.dart';
import 'package:quizapp/fetures/check_answer/views/check_answers.dart';
import 'package:quizapp/fetures/check_answer/views/widgets/check_answers_body.dart';
import 'package:quizapp/fetures/home/models/question%20_model.dart';
class CheckAnswer extends StatelessWidget{
  final List<QuestionModel> questions;
  const CheckAnswer({super.key, required this.questions,});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
                AppTexts.checkanswer,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Appcolor.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
           CheckAnswerBody(
            questions: questions,
          ),


        ],
      ),
    );
  }

}

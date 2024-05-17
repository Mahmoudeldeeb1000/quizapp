import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/fetures/home/models/question%20_model.dart';
import 'package:quizapp/fetures/views/widgets/devider.dart';

class CheckAnswerItemModel extends StatelessWidget{
  const CheckAnswerItemModel({super.key, required this.questionModel,});
  final QuestionModel  questionModel;

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [

       Text("1"),
       SizedBox(height: 10,),
       Text(questionModel.title),
       SizedBox(height: 10,),

       SizedBox(height: 10,),
       Wrap(
         children: [

           ...questionModel.answer.map((answer) =>
               SizedBox(
                   width: MediaQuery.of(context).size.width/2   - 60,
                   child: Text(answer,
                     style: TextStyle (
                         color:


                         questionModel.correctAnswer == answer ? Colors.green:

                         questionModel.correctAnswer != questionModel.selectedAnswer &&
                             questionModel.selectedAnswer == answer?

                         Colors.red:

                         Colors.black
                     ),
                   ))
           )

         ],
       ) ,
       SizedBox(height: 10,),
       Home_Devider()
     ],
   );
  }

}
import 'package:flutter/material.dart';
import 'package:quizapp/core/utils/app_color.dart';
import 'package:quizapp/core/utils/app_text.dart';
import 'package:quizapp/fetures/home/models/question%20_model.dart';
import 'package:quizapp/fetures/views/widgets/devider.dart';
import 'package:quizapp/fetures/views/widgets/result_dialog.dart';

class HomeScreen extends StatefulWidget{
  // final bool resetQuestion;

  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _Question1State();
}
class _Question1State extends State<HomeScreen> {

  int questonsNumber =1;

// void initState(){
//   super.initState();
//   if(widget.resetQuestion){
//     setState(() {
//       questionindex=0;
//       questonsNumber=1;
//     });
//   }
// }
  List<QuestionModel> questions=[
    QuestionModel(
        title: "Who is your favorite football player?",
        answer: ["Lionel Messi", "Cristiano Ronaldo",],
        correctAnswer: "Cristiano Ronaldo",
        selectedAnswer: null),
    QuestionModel(
        title: "Who is the real club of the century?",
        answer: ["elmasry fc","Alahly fc","Zamalec fc","Enby fc"],
        correctAnswer: "Alahly fc",
        selectedAnswer: null),

    QuestionModel(
        title: "Who is your favorite football Team?",
        answer: ["Real Madrid","Barcelona","Man city"],
        correctAnswer: "Real Madrid",
        selectedAnswer: null),
    QuestionModel(
        title: "Who is your favorite Local football player?",
        answer: ["Emad Met3eb","Shekabala","Abutreka","Barakat"],
        correctAnswer: "Abutreka",
        selectedAnswer: null),

  ];

  changeSelectedAnswerToNull( ) {
    for(int i  = 0 ;  i< questions.length ; i++ ) {
      questions[i].selectedAnswer  = null;
    }
  }

  int score = 0 ;
  checkScore( ) {
    for(int i   = 0 ;  i<questions.length ; i++ ) {

      if(questions[i].correctAnswer== questions[i].selectedAnswer ) {
        score += 10 ;
      }

    }
  }

  int questionindex=0;

  plusQuestionIndex() {


    if(questionindex <questions.length-1 ) {
      ///       3
      ///       3
      if(questions[questionindex].selectedAnswer!=null){
        questionindex++;
        questonsNumber++;
        setState(() {

        });

      }else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("choose one answer"),
        ));
        setState(() {

        });
      }

    }
    else{
      if(questions[questionindex].selectedAnswer !=null)  {
        checkScore();
        showDialog(context: context, builder: (cont )
        {
          return ResultDialog(
            questions: questions,
            score: score,
            length: questions.length,
            click: ( ) {
              questionindex = 0;
              score =  0;
              questonsNumber=1;
              changeSelectedAnswerToNull();
              Navigator.pop(context);
              setState(() {

              });
            },
          );
        } );
      }else{
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("choose one answer"),
        ));
      }

    }
  }

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
          Text(questions[questionindex].title),
       Home_Devider(),
       ...questions[questionindex].answer.map((answer){
                return   Padding(
                  padding: const EdgeInsets.only(right: 30,top: 5,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text(answer),
                      Radio(
                        activeColor: Appcolor.primarycolor,
                          value: answer,
                          groupValue: questions[questionindex].selectedAnswer,
                          onChanged: (x){
                         x=questions[questionindex].selectedAnswer=x;
                        setState(() {

                        });
                        }
                          )
                    ],
                  ),
                );

           }) ,
          Home_Devider(),


          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed:(){
                    plusQuestionIndex();
                    if( questionindex > 0){

                      questionindex--;
                      questonsNumber--;
                    }
                    setState(() {

                    });

                  } ,
                  child: Text(AppTexts.last,style: TextStyle(color: Appcolor.white),),
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
                    plusQuestionIndex();
                    if( questionindex < questions.length-1){

                    }
                    setState(() {

                    });

                  } ,
                  child: Text( questionindex== questions.length-1? AppTexts.send:AppTexts.next,style: TextStyle(color: Appcolor.white),),
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
          Text("($questonsNumberَ/${questions.length})",
              textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}
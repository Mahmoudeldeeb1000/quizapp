import 'package:flutter/cupertino.dart';
import 'package:quizapp/fetures/check_answer/views/widgets/check_answer_item_widget.dart';
import 'package:quizapp/fetures/home/models/question%20_model.dart';

class CheckAnswerBody extends StatelessWidget{
  const CheckAnswerBody ({super.key, required this.questions, });
  final List<QuestionModel>  questions;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        shrinkWrap: true,
        children: [
          ...questions.map((e) =>
              CheckAnswerItemModel(

                questionModel: e,
              ),
          ),
        ],
      ),
    );
  }

}
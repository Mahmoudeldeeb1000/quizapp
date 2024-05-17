class QuestionModel{
    String title;
    List<String> answer;
    String? selectedAnswer;
    String correctAnswer;
   QuestionModel({ required this.title,
   required this.answer,
     required this.correctAnswer,
     required this.selectedAnswer
   });


}
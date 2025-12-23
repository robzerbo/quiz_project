import 'package:flutter/cupertino.dart';
import 'package:quiz_project/answer.dart';
import 'package:quiz_project/question.dart';


class Quiz extends StatelessWidget{

  final List<Map<String, dynamic>> questions;
  final int selectedQuestion;
  final void Function(int) onAnswer;
  final bool hasMoreQuestions;

  const Quiz(
    {
      super.key, 
      required this.questions, 
      required this.selectedQuestion,
      required this.onAnswer, 
      required this.hasMoreQuestions
    }
  );

  @override
  Widget build(BuildContext context) {
    
    List<Map<String, dynamic>> answers = hasMoreQuestions ? questions[selectedQuestion]["answer"] : [];
      List<Widget> widgets = answers
        .map((ans) => Answer(tittle: ans['option'], onPressed: () => onAnswer(ans['score'])))
        .toList();
    
    return Column(
          children: <Widget>[
            Question(tittle: questions[selectedQuestion]["question"]),
            ...widgets 
          ],
          );
  }

}
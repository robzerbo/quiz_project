import 'package:flutter/material.dart';
import 'package:quiz_project/quiz.dart';
import 'package:quiz_project/result.dart';

main() => runApp(QuizApp());

class _QuizAppState extends State<QuizApp>{
  int _selectedQuestion = 0;
  int _finalScore = 0;

  final List<Map<String, dynamic>> _questions = [
      {
        "question" : "Qual a sua cor favorita?", 
        "answer" : [
          {"option" : "Blue", "score" : 10}, 
          {"option" : "Black", "score" : 20}, 
          {"option" : "White", "score" : 30}, 
          {"option" : "Red", "score" : 40}
        ]
      },
      {
        "question" : "Qual o seu animal favorito?",
        "answer" : [
          {"option" : "Dog", "score" : 10}, 
          {"option" : "Cat", "score" : 20}, 
          {"option" : "Cow", "score" : 30}, 
          {"option" : "Armadillo", "score" : 40}
        ]
      }];

  void _onAnswer(int score){
    setState(() {
      if(hasMoreQuestions){
        _selectedQuestion++;
        _finalScore += score;
      }  
    });
  }

  void _rebootQuiz(){
    setState(() {
      _selectedQuestion = 0;
      _finalScore = 0;
    });
  }

  bool get hasMoreQuestions{
    return _selectedQuestion < _questions.length;
  }
  
  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 25, 116, 244),
          titleTextStyle: TextStyle(fontSize: 40),
        ),
        body: hasMoreQuestions 
        ? Quiz(
          questions: _questions, 
          selectedQuestion: _selectedQuestion, 
          onAnswer: _onAnswer,
          hasMoreQuestions: hasMoreQuestions
          )
        : Result(finalScore: _finalScore, rebootQuiz: _rebootQuiz) 
      )
    );

  }
}


class QuizApp extends StatefulWidget{
  
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}
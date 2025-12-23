import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int finalScore;
  final void Function() rebootQuiz;
  
  const Result({super.key, required this.finalScore, required this.rebootQuiz});

  String get resultPhrase{
    if(finalScore >= 40){
      return "Você é fera!";
    }
    return "Vishe, sabe de nada!";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            resultPhrase, 
            style: TextStyle(fontSize: 30), 
            textAlign: TextAlign.center,
          ),
        ),
        FilledButton(onPressed: rebootQuiz, child: Text("Reiniciar"))
      ],
    );
  }
}
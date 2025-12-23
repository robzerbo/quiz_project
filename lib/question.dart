import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String tittle;
  
  const Question({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        tittle,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
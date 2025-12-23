import 'package:flutter/material.dart';

class Answer extends StatelessWidget{
  final String tittle;
  final void Function() onPressed;

  const Answer({super.key, required this.onPressed, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: FilledButton(
        style: FilledButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 25, 116, 244),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(5)
          ),
        ),
        onPressed: onPressed, 
        child: Text(tittle)
        )
      );
  }

}
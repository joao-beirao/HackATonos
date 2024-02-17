import 'package:flutter/material.dart';
 
class Question extends StatelessWidget {
  final String questionText;
  
  const Question(this.questionText, {Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 32),
        textAlign: TextAlign.center,
      ), //Text
    ); //Container
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  const Result(this.resultScore, this.resetHandler, {Key? key})
      : super(key: key);

  // Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 90) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o Chega';
    } else if (resultScore >= 70 && resultScore < 90) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o CDS-PP';
    } else if (resultScore >= 45 && resultScore < 70) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o IL';
    } else if (resultScore >= 10 && resultScore < 45) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o PSD';
    } else if (resultScore >= -30 && resultScore < 10){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o PS';
    }
    else if (resultScore >= -55 && resultScore < -30){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o Livre';
    }
    else if (resultScore >= -75 && resultScore < -55){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o BE';
    }
    else if (resultScore >= -90 && resultScore < -75){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o CDU';
    }
    else{
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o PAN';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: (
                       const TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black,  decoration: TextDecoration.none)),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40), 
          TextButton(
            onPressed: () => resetHandler(),
            style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey),
            minimumSize: MaterialStateProperty.all(const Size(70.0, 70.0)),
          ),
            child: Container(
              padding: const EdgeInsets.all(14),
              child: const Text(
                'Recomeçar',
                style: TextStyle(color: Colors.white,fontSize: 28),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
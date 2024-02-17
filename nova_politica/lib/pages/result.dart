import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final int resultScoreX;
  final int resultScoreY;
  final Function resetHandler;

  const Result(this.resultScoreX, this.resultScoreY, this.resetHandler, {Key? key})
      : super(key: key);

  // Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScoreX >= 90) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o Chega';
    } else if (resultScoreX >= 70 && resultScoreX < 90) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o CDS-PP';
    } else if (resultScoreX >= 45 && resultScoreX < 70) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o IL';
    } else if (resultScoreX >= 10 && resultScoreX < 45) {
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o PSD';
    } else if (resultScoreX >= -30 && resultScoreX < 10){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o PS';
    }
    else if (resultScoreX >= -55 && resultScoreX < -30){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o Livre';
    }
    else if (resultScoreX >= -75 && resultScoreX < -55){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o BE';
    }
    else if (resultScoreX >= -90 && resultScoreX < -75){
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o CDU';
    }
    else{
      resultText = 'O Partido do qual as suas respostas mais se aproximam é o PAN';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: (
                       const TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black,  decoration: TextDecoration.none)),
            textAlign: TextAlign.center,
          ),
          const Text('Baseado neste gráfico:',style: (
                       TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: Colors.black,  decoration: TextDecoration.none)),
            textAlign: TextAlign.center,),
          Image.network('https://cdn.discordapp.com/attachments/1207684391283982357/1208362416929509386/qFAAQgAAEIQAACEIAABCBwmQTD3Jfz08F8VtmAAAAAElFTkSuQmCC.png?ex=65e30232&is=65d08d32&hm=16d9070231c367b6425a901e0fe69346efb045cea15c8d93d826d7b0eb24d1bd&'),
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
    )]);
  }
}
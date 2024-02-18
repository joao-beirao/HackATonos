 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/main.dart';
import 'GuidePage.dart';
import 'PoliticalPartiesPage.dart';
import 'result.dart';
import 'quiz.dart';

class MyQuizApp extends StatefulWidget {
  const MyQuizApp({super.key});

  @override
  State<MyQuizApp> createState() => _MyQuizAppState();
}

class _MyQuizAppState extends State<MyQuizApp> {
  final _questions = const [
    {
      'questionText':
          'A interrupção voluntária da gravidez até às 10 semanas (aborto) deve ser permitida.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-300,300]},
        {'text': 'Tendo a concordar', 'score':[-150,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[150,-150]},
        {'text': 'Discordo totalmente', 'score':[300,-300]},
      ],
    },
    {
      'questionText':
          'Os casais homossexuais não devem poder adotar crianças em igualdade de circunstâncias com os casais heterossexuais.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[500,-500]},
        {'text': 'Tendo a concordar', 'score':[250,-250]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[-250,250]},
        {'text': 'Discordo totalmente', 'score':[-500,500]},
      ],
    },
    {//
      'questionText':
          'O Estado deve garantir os meios para que todos os cidadãos tenham acesso a cuidados de saúde, independentemente do prestador de serviços (público, privado ou social).',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-400,200]},
        {'text': 'Tendo a concordar', 'score':[-200,100]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[200,-100]},
        {'text': 'Discordo totalmente', 'score':[400,-200]},
      ],
    },
    {
      'questionText':
          'A morte medicamente assistida (eutanásia), se esta for requerida por um cidadão com uma doença grave, incurável e que cause sofrimento, deve ser permitida.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-100,300]},
        {'text': 'Tendo a concordar', 'score':[-50,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[50,-150]},
        {'text': 'Discordo totalmente', 'score':[100,-300 ]},
      ],
    },
    {
      'questionText':
          'O aumento do número de imigrantes em Portugal é necessário e positivo para a economia.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-400,300]},
        {'text': 'Tendo a concordar', 'score':[-200,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[200,-150]},
        {'text': 'Discordo totalmente', 'score':[400,-300]},
      ],
    },
    {
      'questionText':
          'Em Portugal, os criminosos mais violentos devem ser punidos com maior severidade.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[300,-300]},
        {'text': 'Tendo a concordar', 'score':[150,-150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[-150,150]},
        {'text': 'Discordo totalmente', 'score':[-300,300]},
      ],
    },
    {
      'questionText':
          'Os impostos sobre veículos automóveis e gasóleo/gasolina devem aumentar, a fim de diminuir as emissões de dióxido de carbono para a atmosfera.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-100,300]},
        {'text': 'Tendo a concordar', 'score':[-50,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[50,-150]},
        {'text': 'Discordo totalmente', 'score':[100,-300]},
      ],
    },
    {
      'questionText':
          'A imigração dilui a identidade nacional e as sociedades multiculturalistas trazem riscos associados à segurança e coesão dos países.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[100,-400]},
        {'text': 'Tendo a concordar', 'score':[50,-200]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[-50,200]},
        {'text': 'Discordo totalmente', 'score':[100,400]},
      ],
    },
    {
      'questionText':
          'A introdução do Euro (moeda única) foi muito positiva para a economia portuguesa.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-300,-300]},
        {'text': 'Tendo a concordar', 'score':[-150,-150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[150,150]},
        {'text': 'Discordo totalmente', 'score':[300,300]},
      ],
    },
    {
      'questionText':
          'Os apoios sociais existentes (ex: rendimento social de inserção) devem ser mantidos ou aumentados.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-500,100]},
        {'text': 'Tendo a concordar', 'score':[-250,50]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[250,-50]},
        {'text': 'Discordo totalmente', 'score':[500,-100]},
      ],
    },
    {
      'questionText':
          'A despesa pública em educação e saúde deve ser aumentada.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-300,100]},
        {'text': 'Tendo a concordar', 'score':[-150,50]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[150,-50]},
        {'text': 'Discordo totalmente', 'score':[300,-100]},
      ],
    },
    {
      'questionText': 'O Estado deve aumentar o apoio a desempregados.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-300,100]},
        {'text': 'Tendo a concordar', 'score':[-150,50]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[150,-50]},
        {'text': 'Discordo totalmente', 'score':[300,-100]},  
      ],
    },
    {
      'questionText': 'A integração europeia deve ser ainda mais aprofundada.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[0,300]},
        {'text': 'Tendo a concordar', 'score':[0,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[0,-150]},
        {'text': 'Discordo totalmente', 'score':[0,-300]},
      ],
    },
    {
      'questionText': 'Os impostos sobre as empresas devem ser reduzidos.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[300,400]},
        {'text': 'Tendo a concordar', 'score':[150,200]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[-150,-200]},
        {'text': 'Discordo totalmente', 'score':[-300,-400]},
      ],
    },
    {
      'questionText':
          'A TAP tem um papel estratégico para Portugal e deve ser mantida, mesmo que isso implique gastar dinheiro público.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-300,0]},
        {'text': 'Tendo a concordar', 'score':[-150,0]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[150,0]},
        {'text': 'Discordo totalmente', 'score':[300,0]},
      ],
    },
    {
      'questionText':
          'A idade da reforma deve baixar, mesmo que isso tenha custos para a sustentabilidade da segurança social.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-100,0]},
        {'text': 'Tendo a concordar', 'score':[-50,0]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[50,0]},
        {'text': 'Discordo totalmente', 'score':[100,0]},
      ],
    },
    {
      'questionText':
          'O Governo deve intervir no mercado de arrendamento, por exemplo promovendo a construção de habitação pública, para proteger os inquilinos.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-100,100]},
        {'text': 'Tendo a concordar', 'score':[-50,50]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[50,-50]},
        {'text': 'Discordo totalmente', 'score':[100,-100]},
      ],
    },
    {
      'questionText':
          'Os rendimentos de capital (ex: bolsa, depósitos bancários, investimento imobiliário) e as grandes fortunas devem pagar mais impostos.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-400,300]},
        {'text': 'Tendo a concordar', 'score':[-200,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[200,-150]},
        {'text': 'Discordo totalmente', 'score':[400,-300]},
      ],
    },
    {
      'questionText':
          'O Estado deve garantir que os cidadãos têm liberdade de escolher a escola dos seus filhos (pública ou privada), utilizando, por exemplo, um "cheque-ensino".',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[400,300]},
        {'text': 'Tendo a concordar', 'score':[200,150]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[-200,-150]},
        {'text': 'Discordo totalmente', 'score':[-400,-300]},
      ],
    },
    {
      'questionText':
          'O uso de drogas leves para fins recreativos deve ser legalizado.',
      'answers': [
        {'text': 'Concordo totalmente', 'score':[-300,200]},
        {'text': 'Tendo a concordar', 'score':[-150,100]},
        {'text': 'Neutro', 'score': [0,0]},
        {'text': 'Tendo a discordar', 'score':[150,-100]},
        {'text': 'Discordo totalmente', 'score':[300,-200]},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScoreX = 0;
  var _totalScoreY = 0;


  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScoreX = 0;
      _totalScoreY = 0;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const MyQuizApp()));
  }

  void _answerQuestion(List<int> score) {
    _totalScoreX += score[0];
    _totalScoreY += score[1];

    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => Result(_totalScoreX, _totalScoreY, _resetQuiz),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: Center(
              child: Text('Quiz',
                  style: GoogleFonts.lobster(
                      textStyle: const TextStyle(fontSize: 50)))),
        ),
         drawer: Drawer(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Material(
                    color: Colors.grey,
                    child: InkWell(
                      onTap: () {
                        //COLOCAR AQUI O QUE FAZER QUANDO SE CLICA NA IMAGEM DA PESSOA
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 24, bottom: 50),
                        child: const Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(''),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'João',
                              style:
                                  TextStyle(fontSize: 28, color: Colors.white),
                            ),
                            Text(
                              'joao@gmail.com',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.home_outlined),
                        title: const Text('Início'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>  MyApp(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.menu_book_outlined),
                        title: const Text('Guia para Iniciantes'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MyGuide(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.quiz_outlined),
                        title: const Text('Quiz'),
                        onTap: () {
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.group_outlined),
                        title: const Text('Partidos'),
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MyPartiesApp(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.forum_outlined),
                        title: const Text('Forum'),
                        onTap: () {
                          //COLOCAR HIPERLIGAÇÃO
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _questionIndex < _questions.length
                    ? Quiz(
                        answerQuestion: _answerQuestion,
                        questionIndex: _questionIndex,
                        questions: _questions,
                      ) //Quiz
                    : Result(_totalScoreX,_totalScoreY, _resetQuiz),
                
                Text(
                  '${_questionIndex+1}/20',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}

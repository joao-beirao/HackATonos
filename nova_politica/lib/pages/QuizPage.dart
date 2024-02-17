import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'Os casais homossexuais não devem poder adotar crianças em igualdade de circunstâncias com os casais heterossexuais.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'O Estado deve garantir os meios para que todos os cidadãos tenham acesso a cuidados de saúde, independentemente do prestador de serviços (público, privado ou social).',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'A morte medicamente assistida (eutanásia), se esta for requerida por um cidadão com uma doença grave, incurável e que cause sofrimento, deve ser permitida.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'O aumento do número de imigrantes em Portugal é necessário e positivo para a economia.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'Em Portugal, os criminosos mais violentos devem ser punidos com maior severidade.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'Os impostos sobre veículos automóveis e gasóleo/gasolina devem aumentar, a fim de diminuir as emissões de dióxido de carbono para a atmosfera.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'A imigração dilui a identidade nacional e as sociedades multiculturalistas trazem riscos associados à segurança e coesão dos países.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'A introdução do Euro (moeda única) foi muito positiva para a economia portuguesa.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'Os apoios sociais existentes (ex: rendimento social de inserção) devem ser mantidos ou aumentados.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'A despesa pública em educação e saúde deve ser aumentada.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText': 'O Estado deve aumentar o apoio a desempregados.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText': 'A integração europeia deve ser ainda mais aprofundada.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText': 'Os impostos sobre as empresas devem ser reduzidos.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'A TAP tem um papel estratégico para Portugal e deve ser mantida, mesmo que isso implique gastar dinheiro público.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'A idade da reforma deve baixar, mesmo que isso tenha custos para a sustentabilidade da segurança social.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'O Governo deve intervir no mercado de arrendamento, por exemplo promovendo a construção de habitação pública, para proteger os inquilinos.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'Os rendimentos de capital (ex: bolsa, depósitos bancários, investimento imobiliário) e as grandes fortunas devem pagar mais impostos.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'O Estado deve garantir que os cidadãos têm liberdade de escolher a escola dos seus filhos (pública ou privada), utilizando, por exemplo, um "cheque-ensino".',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
    {
      'questionText':
          'O uso de drogas leves para fins recreativos deve ser legalizado.',
      'answers': [
        {'text': 'Concordo totalmente', 'score': 5},
        {'text': 'Tendo a concordar', 'score': 2},
        {'text': 'Neutro', 'score': 0},
        {'text': 'Tendo a discordar', 'score': -2},
        {'text': 'Discordo totalmente', 'score': -5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const MyQuizApp()));
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length - 1) {
      setState(() {
        _questionIndex++;
      });
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (ctx) => Result(_totalScore, _resetQuiz),
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
                    : Result(_totalScore, _resetQuiz),
                
                Text(
                  '$_questionIndex/20',
                  style: TextStyle(fontSize: 20),
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

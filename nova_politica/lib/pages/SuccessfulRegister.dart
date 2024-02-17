import 'package:flutter/material.dart';
import 'package:nova_politica/pages/AboutPage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:nova_politica/pages/registration.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'GuidePage.dart';
import 'PoliticalPartiesPage.dart';

class MySuccessfulRegist extends StatelessWidget {
  const MySuccessfulRegist({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Registo Concluído',
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              title: Center(
                  child: Text('Conta Criada com Sucesso!',
                      style: GoogleFonts.lobster(
                          textStyle: const TextStyle(fontSize: 40)))),
            ),
            body: Center(
              child: Container(
                width: 800,
                child: ListView(children: [
                  Container(
                      height: 100,
                      margin: const EdgeInsets.fromLTRB(80.0, 100.0, 80.0, 0.0),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Seja Muito Bem Vindo ao Nova Política!',
                          style: GoogleFonts.exo2(
                              textStyle: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold)),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 50,
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                      child: Text(
                        'É com muito gosto que o recebemos na nossa Comunidade.',
                        style: GoogleFonts.signikaNegative(
                            textStyle: const TextStyle(fontSize: 25)),
                        textAlign: TextAlign.center,
                      )),
                  Container(
                      height: 250,
                      width: 200,
                      margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                      child: Image.network(
                          'https://media.discordapp.net/attachments/1171195359947657278/1208485478760976384/Pinguim_Politico.png?ex=65e374ce&is=65d0ffce&hm=be0de54d36bc75e78432e5694b0280035ce30fcb6cee83e02474156d6d863397&=&format=webp&quality=lossless&width=662&height=662')),
                  Container(
                    child: 
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const MyHomePage(title: 'Nova Política',),
                        ),
                      );
                    },
                    child: const Text('Ir para a Página Principal', style: TextStyle(fontSize: 30.0, color: Colors.black) ),
                  ))
                ]),
              ),
            )));
  }
}

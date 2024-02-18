import 'package:flutter/material.dart';
import 'ContactPage.dart';
import 'AboutPage.dart';
import 'HomePage.dart';
import 'QuizPage.dart';
import 'package:nova_politica/pages/ForumPage.dart';
import 'package:nova_politica/pages/PoliticalPartiesPage.dart';
import 'globals.dart';

void main() {
  runApp(const MyAboutPage());
}

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sobre Nós',
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              //backgroundColor: Color.fromARGB(255, 255, 168, 38).withOpacity(0.7),
              backgroundColor: Color.fromARGB(255, 176, 176, 176),
              title: Center(
                  child: Text('Sobre nós',
                      style: TextStyle(
                          fontSize: 40, fontWeight: FontWeight.bold))),
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
                          child: Column(
                            children: [
                              Icon(
                                Icons.person,
                                size: 80,
                                color: Colors.white,
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                userEmail,
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
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
                                builder: (_) => const MyHomePage(
                                  title: 'Nova Política',
                                ),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          leading: const Icon(Icons.menu_book_outlined),
                          title: const Text('Guia para Iniciantes'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.quiz_outlined),
                          title: const Text('Quiz'),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MyQuizApp(),
                              ),
                            );
                          },
                        ),
                        // !!!ERRO!!! - Após iniciar o quiz, voltando para trás, já não é possível ver o menu dos partidos!
                        ListTile(
                          leading: const Icon(Icons.group_outlined),
                          title: const Text('Partidos'),
                          onTap: () {
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => ForumPage(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: Center(
                child: Container(
                  width: 600,
                    child: ListView(children: [
              Container(
                  child: Column(children: [
                    SizedBox(
                      height: 24,
                    ),
                    const Text(
                      '\nAtualmente, enfrenta-se em Portugal uma crise política. \n\n Cada vez mais, o desinteresse e falta de conhecimento político degrada a atual democracia. Este fenómeno deve-se, maioritariamente à mudança de interesses e objetivos dos jovens, agravado pela falta de literacia política.\n\nA falta de introdução a este tema no processo de formação dos cidadãos é a principal razão que promove alguns dos problemas atuais, principalmente, a alta taxa de abstenção.\n\nDeste modo, surgiu-nos  a ideia de criar este projeto, que, caso desenvolvido e melhorado futuramente, poderia desencadear um grande impacto no sistema político português.',
                      style: (TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      )),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                        child: const Text(
                      'A Nossa Mascote:',
                      style: (TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      )),
                      textAlign: TextAlign.center,
                    )),
                    Container(
                        height: 200,
                        width: 200,
                        margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                        child: Image.network(
                            'https://media.discordapp.net/attachments/1171195359947657278/1208485478760976384/Pinguim_Politico.png?ex=65e374ce&is=65d0ffce&hm=be0de54d36bc75e78432e5694b0280035ce30fcb6cee83e02474156d6d863397&=&format=webp&quality=lossless&width=662&height=662'))
                  ]))
            ])))));
  }
}

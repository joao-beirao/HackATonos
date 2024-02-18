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
              backgroundColor: Color.fromARGB(255, 255, 0, 0),
              title: Center(
                  child: Text('Sobre nós',
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
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
                            CircleAvatar(
                              radius: 50,
                              backgroundImage: NetworkImage(''),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              userEmail,
                              style: TextStyle(fontSize: 14, color: Colors.white),
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
                              builder: (_) => const MyHomePage(title: 'Nova Política',),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.menu_book_outlined),
                        title: const Text('Guia para Iniciantes'),
                        onTap: () {

                        },
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
          color: Colors.white,
          width: 800,
          child:Column(children: [
            SizedBox(
                height: 24,
            ),
            const Text(
            'A plataforma Nova Política apresenta o mundo político português de uma forma simples, intuitiva e agradável, tornando passar a perceber de política um processo rápido. Não aceitamos doações porque somos extremamente humildes, o prémio de primeiro lugar do HackaThon é pagamento que chegue.',
            style: (TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,)),
            textAlign: TextAlign.center,
          ),
          ]
      )))
    ));
  }
}
import 'package:flutter/material.dart';
import 'ContactPage.dart';
import 'AboutPage.dart';
import 'HomePage.dart';
import 'QuizPage.dart';
import 'package:nova_politica/pages/ForumPage.dart';
import 'package:nova_politica/pages/PoliticalPartiesPage.dart';
import 'globals.dart';

void main() {
  runApp(const MyContactPage());
}

class MyContactPage extends StatelessWidget {
  const MyContactPage({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              //backgroundColor: Color.fromARGB(255, 255, 168, 38).withOpacity(0.7),
              backgroundColor: Color.fromARGB(255, 255, 212, 96),
              title: Center(
                  child: Text('Contactos',
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
        backgroundColor: Color(0xffffd460),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: AssetImage('')),
              Text(
                'Bruno Duarte',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Color(0xfff07b3f),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'bd.duarte@campus.fct.unl.pt',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Color(0xfff07b3f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Color(0xfff07b3f),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
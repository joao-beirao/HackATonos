import 'package:flutter/material.dart';
import 'package:nova_politica/pages/AboutPage.dart';
import 'ContactPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nova Politica',
      home: Scaffold(
      appBar: AppBar(
        title: Text('Nova Política'),
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
                        padding: EdgeInsets.only(top: 24, bottom: 24),
                        child: Column(
                          children: const [
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
                            const Text(
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
                        leading: Icon(Icons.home_outlined),
                        title: Text('Início'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: Icon(Icons.menu_book_outlined),
                        title: Text('Guia para Iniciante'),
                        onTap: () {
                          //COLOCAR HIPERLIGAÇÃO
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.quiz_outlined),
                        title: Text('Quiz'),
                        onTap: () {
                          //COLOCAR HIPERLIGAÇÃO
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.forum_outlined),
                        title: Text('Forum'),
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
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.withOpacity(0.1),
        child: Row(
          mainAxisAlignment:  MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          TextButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const MyAboutPage(),
                ),
            );
          }, child: Text('Sobre Nós')
        ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Text('Nova Política 2024 '),
            Icon(Icons.copyright_rounded),
            ],),
            TextButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => const MyContactPage(),
                  ),
              );
            }, child: Text('Contactos'),
            )
            ],
        )
      )
    )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nova_politica/pages/AboutPage.dart';
import 'ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';

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
            title: new Center(
                child: new Text('Nova Política',
                    style: GoogleFonts.lobster(
                        textStyle: TextStyle(fontSize: 40)))),
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
          body: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.network(
                      'https://media-manager.noticiasaominuto.com/1920/naom_5cebeda3ee509.jpg')),
              Center(
                child: Text(
                  'Seja bem vindo ao Nova Política, uma maneira inovadora de estar a par da política portuguesa!',
                  style: GoogleFonts.oswald(textStyle: TextStyle(fontSize: 30)),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(alignment: Alignment.topCenter, child: Image.network(
                  'https://cdn.discordapp.com/attachments/1171195359947657278/1208221458707521616/Sondagens_Iscte.png?ex=65e27eeb&is=65d009eb&hm=41603c4357c69dffcea15de2c8c8d96827097ac27d3d8469d36cd6afa302e8c6&')),
              BottomAppBar(
                  color: Colors.grey.withOpacity(0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const MyAboutPage(),
                              ),
                            );
                          },
                          child: Text('Sobre Nós')),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Nova Política 2024 '),
                          Icon(Icons.copyright_rounded),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MyContactPage(),
                            ),
                          );
                        },
                        child: Text('Contactos'),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}

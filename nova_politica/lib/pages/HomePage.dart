import 'package:flutter/material.dart';
import 'package:nova_politica/pages/AboutPage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'QuizPage.dart';

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
            title: Center(
                child: Text('Nova Política',
                    style: GoogleFonts.lobster(
                        textStyle: const TextStyle(fontSize: 40)))),
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
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(Icons.menu_book_outlined),
                        title: const Text('Guia para Iniciante'),
                        onTap: () {
                          //COLOCAR HIPERLIGAÇÃO
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.quiz_outlined),
                        title: const Text('Quiz'),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const MyAboutPage(),
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
          body: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    height: 500,
                    width: 2000,
                    child: Image.network(
                        'https://media-manager.noticiasaominuto.com/1920/naom_5cebeda3ee509.jpg')),
              ),
              Center(
                  child: Container(
                height: 200,
                width: 800,
                child: Center(
                  child: Text(
                    'Seja bem vindo ao Nova Política, uma maneira inovadora de estar a par da política portuguesa!',
                    style:
                        GoogleFonts.oswald(textStyle: const TextStyle(fontSize: 40)),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      'https://cdn.discordapp.com/attachments/1171195359947657278/1208221458707521616/Sondagens_Iscte.png?ex=65e27eeb&is=65d009eb&hm=41603c4357c69dffcea15de2c8c8d96827097ac27d3d8469d36cd6afa302e8c6&')),
              Center(
                child: Container(
                  height: 500,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://www.example.com');
                      },
                      child: const Text(
                        'Saber Mais',
                        style: TextStyle(
                          color: Colors.grey,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
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
                      const Row(
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
                        child: const Text('Contactos'),
                      )
                    ],
                  ))
            ],
          ),
        ));
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/ForumPage.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:nova_politica/pages/partidos/BlocoDeEsquerda.dart';
import 'package:nova_politica/pages/partidos/CDSPartidoPopular.dart';
import 'package:nova_politica/pages/partidos/Chega.dart';
import 'package:nova_politica/pages/partidos/ColigacaoDemocraticaUnitaria.dart';
import 'package:nova_politica/pages/partidos/IniciativaLiberal.dart';
import 'package:nova_politica/pages/partidos/Livre.dart';
import 'package:nova_politica/pages/partidos/PartidoSocialDemocrata.dart';
import 'package:nova_politica/pages/partidos/PartidoSocialista.dart';
import 'package:nova_politica/pages/partidos/PessoasAnimaisNatureza.dart';

class MyPartiesApp extends StatelessWidget {
  const MyPartiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Partidos Políticos',
      home: Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 142, 249),
        toolbarHeight: 100,
        title: Center(child: Text('Partidos Políticos', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
        actions: <Widget>[

        ],
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
                              builder: (_) => const MyHomePage(title: 'Nova Política',),
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
          body: ListView(children: [Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(25.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PAN(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208387005566951435/PAN.jpg?ex=65e31918&is=65d0a418&hm=0747f482ce3f489c7f0f99c1c26891c1e694b2d01d76a24ed45d4790c9a9ce91&'),
                    ),
                    ),
                    Text('Pessoas Animais Natureza'),
                    Text('PAN')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CDU(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.eDrWrIKIgvwJfzc5cYUnwAHaHa?rs=1&pid=ImgDetMain'),
                    ),
                    ),
                    Text('Coligação Democrática Unitária'),
                    Text('CDU')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const BE(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208381005988368404/BE.png?ex=65e31382&is=65d09e82&hm=c30e2e126b70c3b3cd9b38275a4052024b3647a17e68a4634712bcbabef99d84&'),
                    ),
                    ),
                    Text('Bloco de Esquerda'),
                    Text('BE')
                  ],
                ),
              ])),
              Padding(padding: EdgeInsets.all(25.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const L(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208386670010040340/L.png?ex=65e318c8&is=65d0a3c8&hm=42cb21e16a6cee53fdec0624166165e9c0b7d4d049de9200fdc6b419d0da4d5f&'),
                    ),
                    ),
                    Text('Livre'),
                    Text('L')
                  ],
                ),
                Column(
                  children: [
                    /**
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PartidoSocialista(),
                          ),
                        );
                        },
                        child:  CircleAvatar(
                          radius: 150.0,
                          backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/pt/c/ce/Partido_Socialista_%28Portugal%29.png'),
                        ), 
                    ),
                    */
                    //-------------
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PS(),
                          ),
                        );
                      },
                      child: CircleAvatar(
                        radius: 150,
                        backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/pt/c/ce/Partido_Socialista_%28Portugal%29.png'
                        ),
                      ),
                    ),
                    //-------------
                    Text('Partido Socialista'),
                    Text('PS')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const PSD(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208380456610037770/PSD.png?ex=65e312ff&is=65d09dff&hm=7e19a4be56a03ab048b18b55941b9cdf7eac4ab2ae1eef154d9c0eccf500ae3f&'),
                    ),
                    ),
                    Text('Partido Social Democrata'),
                    Text('PSD')
                  ],
                ),
              ])),
              Padding(padding: EdgeInsets.all(25.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const IL(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208381486592692244/IL.png?ex=65e313f5&is=65d09ef5&hm=2d0b6ddbc45ef93ad9f5c60c21f3f601027be79617557fb4293fcd7ef911e338&'),
                    ),
                    ),
                    Text('Iniciativa Liberal'),
                    Text('IL')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CDS(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Flag_of_the_CDS_%E2%80%93_People%27s_Party.svg/1200px-Flag_of_the_CDS_%E2%80%93_People%27s_Party.svg.png'),
                    ),
                    ),
                    Text('CDS - Partido Popular'),
                    Text('CDS-PP')
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const CH(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/pt/c/c4/S%C3%ADmbolo_principal_do_CHEGA.png'),
                    ),
                    ),
                    Text('Chega'),
                    Text('CH')
                  ],
                ),
              ])),
            ],
          )])),
    );
  }
}

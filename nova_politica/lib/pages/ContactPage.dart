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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              //backgroundColor: Color.fromARGB(255, 255, 168, 38).withOpacity(0.7),
              backgroundColor: Colors.white,
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
                            Icon(Icons.person,size: 80,color: Colors.white,),
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
        backgroundColor: Colors.white,
        body: Center(
          
          child:Container(

            width: 800,
          child: Column(children: [
                      SizedBox(height: 40, width: 40,),

          Row(children: [ Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: NetworkImage('https://media.licdn.com/dms/image/D4D03AQEoQ-GSVziFdg/profile-displayphoto-shrink_400_400/0/1706995723702?e=1714003200&v=beta&t=2SQzFjgxAdaCxnvqHydR4AS95RCRpV4sDChx0rbBPPU')),
              Text(
                'Bruno Duarte',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black, fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'bd.duarte@campus.fct.unl.pt',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Colors.black, fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black                ),
              ),
              
            ],
          ),

          
            SizedBox(height: 40, width: 40,),

            Column(
              
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208736010834550836/image.png?ex=65e45e22&is=65d1e922&hm=ce22c6ffb33ca59894bc2c398e9b4bd3199fbde546d66a16009c7d5251ee5865&')),
              Text(
                'Francisco Almeida',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black, fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'fs.almeida@campus.fct.unl.pt',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Colors.black, fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black                ),
              ),
              
            ],
          ),
          
        ]),

          SizedBox(height: 40, width: 40,),
          Row(children: [
          Row(children:[
            Column(
              
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, foregroundImage: NetworkImage("https://avatars.githubusercontent.com/u/72351540?s=400&u=cef4beff382151ba401c7a2042fd060d6520699d&v=4")),
              Text(
                'João Beirão',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black, fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'jm.beirao@campus.fct.unl.pt',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Colors.black, fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black                ),
              ),
              
            ],
          ),
          
            SizedBox(height: 40, width: 40,),
            Column(
              
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208735863601889361/184237481_314553767527659_5382730565504779989_n.png?ex=65e45dff&is=65d1e8ff&hm=4e9957db5c1b2c038d01eba765e98306beab8f376b9254a1401a909bf0bb518c&')),
              Text(
                'Rui Xavier',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Colors.black, fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'ra.xavier@campus.fct.unl.pt',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Colors.black, fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Colors.black                ),
              ),
              
            ],
          ),]),
        ]),]),),)
        ));
  }
}
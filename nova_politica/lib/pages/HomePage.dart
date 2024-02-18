import 'package:flutter/material.dart';
import 'package:nova_politica/pages/AboutPage.dart';
import 'package:nova_politica/pages/ForumPage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:nova_politica/pages/login.dart';
import 'package:nova_politica/pages/registration.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'ContactPage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'GuidePage.dart';
import 'PoliticalPartiesPage.dart';
import 'globals.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void updateLoginStatus() {
    setState(() {
      isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Center(
            child: Text('Nova Política',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
        actions: <Widget>[
          if (!isLoggedIn) // Only show login and register buttons if not logged in
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => LoginScreen(onLoginSuccess: updateLoginStatus),
                      ),
                    );
                  },
                  child: Text('Log In', style: TextStyle(color: Colors.black)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => RegistrationScreen(),
                      ),
                    );
                  },
                  child: Text('Register', style: TextStyle(color: Colors.black)),
                )
              ],
            ),
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Material(
                color: Colors.grey,
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
                  Column(
                    children: [
                      ListTile(
                        leading: const Icon(Icons.home_outlined),
                        title: const Text('Início'),
                        onTap: () {},
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
                    'Seja bem vindo ao Nova Política, uma maneira inovadora de estar a par da Política Portuguesa!',
                    style:
                        GoogleFonts.oswald(textStyle: const TextStyle(fontSize: 40)),
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
              Align(
                  alignment: Alignment.topCenter,
                  child: Image.network(
                      'https://cdn.discordapp.com/attachments/1171195359947657278/1208221458707521616/Sondagens_Iscte.png?ex=65e27eeb&is=65d009eb&hm=41603c4357c69dffcea15de2c8c8d96827097ac27d3d8469d36cd6afa302e8c6&'
                      )),
              Center(
                child: Container(
                  height: 100,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://sondagens-ics-ul.iscte-iul.pt/2024/02/02/sondagem-janeiro-fevereiro-de-2024-para-sic-expresso/');
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
              
              Center(child:News1(),),
              Container(height: 30,),
              Center(child:News2(),),
              Container(height: 30,),
              Center(child:News3(),),
              Container(height: 30,),

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
        );
  }


  
}

  void _launchURL(String url) async {
    //if (await canLaunch(url)) {
    //  await launch(url);
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Could not launch $url';
    }
  }
class News1 extends StatelessWidget {  
  const News1({super .key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () { // INSERIR LINK UP
              _launchURL('https://www.dnoticias.pt/2024/2/16/394240-marcelo-recebe-ireneu-barreto-esta-manha-em-belem/');
            },
            child: Container( 
      height: 270,
      width: 680,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 12, 62),
        borderRadius: BorderRadius.circular(10), // Adjust the value for roundness
      )
    ,
      child: Row(children:[
        Container(
          padding: EdgeInsets.all(20),
          width: 200,
          child:Text("Marcelo recebe Ireneu Barreto esta manhã em Belém.", style: GoogleFonts.nunito(fontSize: 25, color: Color.fromARGB(255, 242, 242, 242)),textAlign: TextAlign.center),
        ),
        SizedBox(
        //foi aconselhado usar SizedBox em vez de Container
        //Container(
          width: 480,
          height: 400, 
          child: Image.network("https://static-storage.dnoticias.pt/www-assets.dnoticias.pt/images/configuration/R/de748e4a-8d3.png"))

        ])
      ),
    );
  }
}

class News2 extends StatelessWidget {  
  //const News2({super .key});

  var a = "2024_02_16_21_54_34_1573604";
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () { // INSERIR LINK UP
              _launchURL('https://cnnportugal.iol.pt/eleicoes-legislativas/debate/hipocrisia-lula-da-silva-ou-putin-andre-ventura-e-rui-tavares-num-debate-pouco-claro/20240216/65bd1e4ad34e65afa2fa5d50');
            },
      child: Container( 
      height: 270,
      width: 680,
      decoration: BoxDecoration(
        
        color: Color.fromARGB(255, 0, 12, 62),
        borderRadius: BorderRadius.circular(10), // Adjust the value for roundness

      )
    ,
      child: Row(children:[
        Container(
          width: 480,
          height: 400, 
          child: Image.network("https://cdn.discordapp.com/attachments/1208282567002820609/1208282602495021067/1024.jpg?ex=65e2b7dd&is=65d042dd&hm=7dab45bb23375d511e157511f4d7cdd55945cf2a9d5cf52632fa8a0670665ad2&")),
        Container(
          width: 200,
          padding: EdgeInsets.all(20),
          child:Center(child:Text("Hipocrisia, Lula da Silva ou Putin.", style: GoogleFonts.nunito(fontSize: 25, color: Color.fromARGB(255, 242, 242, 242)),textAlign: TextAlign.center)),
        ),
        ])
      ),
    );
  }
}

class News3 extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: () { // INSERIR LINK UP
              _launchURL('https://www.cmjornal.pt/politica/detalhe/mariana-mortagua-acusa-ps-de-falhar-na-saude-e-habitacao-pedro-nuno-contesta-solucoes-do-be-');
            },
            child: Container( 
      height: 270,
      width: 680,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 0, 12, 62),
        borderRadius: BorderRadius.circular(10), // Adjust the value for roundness

      )
    ,
      child: Row(children:[
        Container(
          padding: EdgeInsets.all(20),
          width: 200,
          child:Text("Mariana Mortágua acusa PS de falhar na Saúde e Habitação.", style: GoogleFonts.nunito(fontSize: 25, color: Color.fromARGB(255, 242, 242, 242)),textAlign: TextAlign.center),
        ),
        Container(
          width: 480,
          height: 400, 
          child: Image.network("https://cdn.discordapp.com/attachments/1208282567002820609/1208287647261397072/img_1280x7202024_02_16_21_54_34_1573604.jpeg?ex=65e2bc90&is=65d04790&hm=35c25a270e6d5e8f48188f674f764535737fcae8bad998d0bf7328993cdb8408&"))

        ])
      ),
    );
  }
}
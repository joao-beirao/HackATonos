import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../PoliticalPartiesPage.dart';
const Color MAIN_COLOR = Color.fromARGB(255,12,169,102);

class PS extends StatelessWidget {
  const PS({super .key});

@override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MAIN_COLOR,
        title: Center(child: Text('Partido Socialista', style: GoogleFonts.lobster(textStyle: const TextStyle(fontSize: 40)))),
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
                              builder: (_) => const MyHomePage(title: 'Nova Política'),
                            ),
                          );},
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
                          //COLOCAR HIPERLIGAÇÃO
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
      body:
        SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Banner Image
          Container(
            height: 450,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://pbs.twimg.com/profile_banners/70349639/1707244508/1080x360'), // Path to your banner image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Horizontal space
          SizedBox(height: 20),
          // Row containing the left image and text
              Center(child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'Partido Socialista',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'PS',
                          style: TextStyle(fontSize: 30, color: MAIN_COLOR),
                        ),),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(child: Container(
                      width: 800,
                      child:Text(
                      'O Partido Socialista Português (PS) é um partido político de centro-esquerda em Portugal. Fundado após a Revolução dos Cravos em 1974, o PS promove princípios sociais-democratas e políticas progressistas. Defende a justiça social, igualdade de oportunidades e um Estado de bem-estar social. Alternando-se no poder com o PSD, seu principal rival, o PS tem influenciado significativamente as políticas portuguesas desde então. Liderado por uma direção nacional eleita democraticamente, o partido desempenha um papel fundamental na política portuguesa.',
                      style: TextStyle(fontSize: 16),
                    ),),),
                  SizedBox(height: 60),
                  
                  Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'Principais Propostas',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    SizedBox(height: 20),

                    Proposal(number: "1.",text: "Reforço do Sistema de Saúde: Investimento em infraestrutura, equipamentos e pessoal para garantir acesso universal e qualidade nos cuidados de saúde."),

                    Proposal(number: "2.",text: "Promoção da Educação Inclusiva: Implementação de medidas para garantir educação de qualidade para todos, com foco na inclusão e igualdade de oportunidades."),

                    Proposal(number: "3.",text: "Impulso à Economia Verde: Estímulo a setores sustentáveis, incentivando energias renováveis e práticas ambientalmente responsáveis."),

                    Proposal(number: "4.",text: "Combate à Pobreza e Desigualdade: Implementação de políticas sociais para reduzir a pobreza e a desigualdade, através de programas de apoio e redistribuição de renda."),

                    Proposal(number: "5.",text: "Reforma do Sistema Fiscal: Adoção de medidas para tornar o sistema fiscal mais justo e progressivo, combatendo a evasão fiscal e taxando mais os mais ricos."),

                    Proposal(number: "6.",text: "Fortalecimento dos Direitos Laborais: Proteção e valorização dos direitos dos trabalhadores, promovendo condições laborais dignas e seguras."),

                    Proposal(number: "7.",text: "Investimento em Infraestrutura: Modernização e expansão da infraestrutura pública, com foco em transporte, habitação e comunicações."),

                    Proposal(number: "8.",text: "Reforma da Justiça: Melhoria do sistema judicial para garantir maior eficiência, transparência e acesso igualitário à justiça."),

                    Proposal(number: "9.",text: "Promoção da Cultura e Artes: Apoio ao setor cultural e artístico, incentivando a produção e acesso à cultura em todas as suas formas."),

                    Proposal(number: "10.",text: "Reforço da Democracia Participativa: Promoção de mecanismos de participação cidadã e transparência na governança, fortalecendo a democracia e o envolvimento da sociedade civil."),



                    GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://ps.pt/');
                      },
                      child: const Center(child:Text(
                          'Saber Mais',
                          style: TextStyle(
                          color: MAIN_COLOR,
                          decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 60),
                    // First text
                    
                  ],
                ),
              ),
            ],
          ),
        ),
    );
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
  
}

class Proposal extends StatelessWidget{
  final String number;
  final String text;

  const Proposal({
    required this.text,
      required this.number,

  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
      children: [
        Center(child: Container(
            width: 800,
            child:Center(child:Text(
              number,
              style: TextStyle(fontSize: 30, color: MAIN_COLOR),
            ),),
          ),
        ),
        Center(
          child: Container(
            width: 800,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35), // Adjust the value for roundness
              border: Border.all(
                color: MAIN_COLOR, // Border color
                width: 2, // Border width
              ),
            ),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        ],
      ),
      SizedBox(height: 20),
      ]
    );
  }

}

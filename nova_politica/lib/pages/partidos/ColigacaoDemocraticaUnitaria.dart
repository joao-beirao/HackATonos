import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:nova_politica/pages/globals.dart';

import '../PoliticalPartiesPage.dart';
const Color MAIN_COLOR = Color.fromARGB(255,7,111,196);

class CDU extends StatelessWidget {
  const CDU({super .key});

@override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MAIN_COLOR,
        title: Center(child: Text('Coligação Democrática Unitária', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
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
                image: NetworkImage('https://pbs.twimg.com/profile_banners/3087068219/1706895745/1080x360'), // Path to your banner image
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
                          'Coligação Democrática Unitária',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'CDU',
                          style: TextStyle(fontSize: 30, color: MAIN_COLOR),
                        ),),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(child: Container(
                      width: 800,
                      child:Text(
                      'A Coligação Democrática Unitária (CDU) é uma aliança política portuguesa formada pelo Partido Comunista Português (PCP) e pelo Partido Ecologista "Os Verdes" (PEV). Fundada em 1987, a CDU defende uma plataforma de esquerda, com ênfase na justiça social, direitos dos trabalhadores, proteção ambiental e luta contra o neoliberalismo. O PCP é o principal partido da coligação, com uma ideologia comunista e uma longa história de ativismo político em Portugal, enquanto o PEV destaca-se pela sua preocupação com questões ambientais e de sustentabilidade. A CDU tem uma presença significativa em várias instituições políticas do país, incluindo a Assembleia da República e diversas autarquias locais. Sua atuação política tem sido marcada pela defesa dos interesses populares e pela oposição às políticas de austeridade e privatizações.',
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

                    Proposal(number: "1.",text: "Defesa dos Direitos dos Trabalhadores: Fortalecimento dos sindicatos, aumento do salário mínimo e proteção contra precariedade laboral."),

                    Proposal(number: "2.",text: "Investimento em Serviços Públicos: Reforço do sistema de saúde, educação e transportes públicos, garantindo acesso universal e de qualidade."),

                    Proposal(number: "3.",text: "Proteção do Ambiente: Adoção de políticas de preservação ambiental, combate à poluição e promoção de energias renováveis."),

                    Proposal(number: "4.",text: "Reversão das Privatizações: Nacionalização de setores estratégicos da economia para garantir o interesse público."),

                    Proposal(number: "5.",text: "Habitação Acessível: Implementação de medidas para combater a especulação imobiliária e garantir o direito à habitação digna."),

                    Proposal(number: "6.",text: "Apoio à Agricultura Familiar: Incentivos para agricultores familiares, promovendo a produção sustentável e a preservação do meio rural."),

                    Proposal(number: "7.",text: "Combate à Corrupção: Reforço das instituições de combate à corrupção e punição exemplar de casos de corrupção política e económica."),

                    Proposal(number: "8.",text: "Cultura e Patrimônio: Investimento na preservação e promoção da cultura popular e do patrimônio histórico."),

                    Proposal(number: "9.",text: "Igualdade de Gênero: Implementação de políticas de igualdade salarial e combate à violência de género."),

                    Proposal(number: "10.",text: "Paz e Solidariedade Internacional: Defesa da soberania nacional e apoio à cooperação entre os povos, contra o imperialismo e as guerras."),



                    GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://www.cdu.pt/');
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

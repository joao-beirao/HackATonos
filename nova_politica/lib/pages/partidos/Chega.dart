import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../PoliticalPartiesPage.dart';
const Color MAIN_COLOR = Color.fromARGB(255,33,35,84);

class CH extends StatelessWidget {
  const CH({super .key});

@override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MAIN_COLOR,
        title: Center(child: Text('Chega', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white))),
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
                image: NetworkImage('https://pbs.twimg.com/profile_banners/1070088307894349825/1701104163/1080x360'), // Path to your banner image
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
                          'Chega',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'CH',
                          style: TextStyle(fontSize: 30, color: MAIN_COLOR),
                        ),),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(child: Container(
                      width: 800,
                      child:Text(
                      'O partido político português Chega foi fundado em 2019, apresentando-se como uma alternativa de direita no cenário político do país. Sua plataforma é caracterizada por uma postura nacionalista, conservadora e anti-sistema, com ênfase em questões como segurança, imigração e identidade cultural. Liderado por André Ventura, o partido tem suscitado controvérsias devido a posicionamentos considerados polêmicos e radicais por alguns setores da sociedade portuguesa.',
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

                    Proposal(number: "1.",text: "Fortalecimento da Segurança Pública: Aumento do efetivo policial, investimento em tecnologia e medidas mais severas contra o crime e a violência."),

                    Proposal(number: "2.",text: "Controle Rigoroso da Imigração: Restrição da entrada de imigrantes ilegais e revisão dos critérios de concessão de visto para proteger os interesses nacionais."),

                    Proposal(number: "3.",text: "Promoção dos Valores Tradicionais: Apoio à família tradicional, defesa da moralidade e dos princípios cristãos na sociedade."),

                    Proposal(number: "4.",text: "Redução da Burocracia e do Estado: Simplificação de processos administrativos e diminuição da intervenção estatal na economia e na vida dos cidadãos."),

                    Proposal(number: "5.",text: "Combate à Corrupção: Implementação de medidas rigorosas contra a corrupção e a impunidade, promovendo a transparência e a integridade na gestão pública."),

                    Proposal(number: "6.",text: "Defesa da Soberania Nacional: Proteção dos interesses de Portugal perante organizações internacionais e fortalecimento das relações bilaterais com outros países."),

                    Proposal(number: "7.",text: "Valorização da Cultura Portuguesa: Promoção e preservação da identidade cultural nacional, incentivando o conhecimento e o orgulho da história e das tradições portuguesas."),

                    Proposal(number: "8.",text: "Reforma do Sistema de Saúde: Melhoria da qualidade e do acesso aos serviços de saúde, com investimento em infraestrutura e valorização dos profissionais de saúde."),

                    Proposal(number: "9.",text: "Estímulo à Economia Nacional: Incentivo ao empreendedorismo, redução de impostos para empresas e medidas de proteção da indústria nacional."),

                    Proposal(number: "10.",text: "Educação de Qualidade: Modernização do sistema educativo, com ênfase no mérito e na excelência acadêmica, além de valorização dos professores e revisão dos currículos escolares."),



                    GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://partidochega.pt/');
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

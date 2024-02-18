import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../PoliticalPartiesPage.dart';
const Color MAIN_COLOR = Color.fromARGB(255,238,120,10);

class CDS extends StatelessWidget {
  const CDS({super .key});

@override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MAIN_COLOR,
        title: Center(child: Text('CDS Partido Popular', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
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
                image: NetworkImage('https://pbs.twimg.com/profile_banners/19334929/1706111519/1080x360'), // Path to your banner image
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
                          'CDS Partido Popular',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'CDS-PP',
                          style: TextStyle(fontSize: 30, color: MAIN_COLOR),
                        ),),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(child: Container(
                      width: 800,
                      child:Text(
                      'O Centro Democrático Social - Partido Popular (CDS-PP) é um partido político português de centro-direita, fundado em 1974. Defende princípios conservadores e democrata-cristãos, promovendo valores como a família, a liberdade económica e a subsidiariedade. Tradicionalmente, tem sido um partido defensor da iniciativa privada, da economia de mercado e dos valores sociais conservadores. O CDS-PP tem uma presença significativa na política portuguesa, participando em várias coligações governamentais e contribuindo para a formulação de políticas públicas em Portugal.',
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

                    Proposal(number: "1.",text: "Reforma Fiscal Responsável: Redução de impostos para famílias e empresas, incentivando o crescimento económico."),

                    Proposal(number: "2.",text: "Fortalecimento da Segurança Pública: Aumento do efetivo policial e investimento em tecnologia para combater a criminalidade."),

                    Proposal(number: "3.",text: "Apoio à Iniciativa Privada: Incentivos fiscais e desregulamentação para estimular o empreendedorismo e a criação de empregos."),

                    Proposal(number: "4.",text: "Educação de Qualidade: Promoção da excelência académica e valorização dos professores."),

                    Proposal(number: "5.",text: "Proteção da Família: Apoio às políticas de família e medidas de conciliação trabalho-família."),

                    Proposal(number: "6.",text: "Saúde Eficiente: Modernização do sistema de saúde e redução dos tempos de espera."),

                    Proposal(number: "7.",text: "Defesa da Soberania Nacional: Fortalecimento das Forças Armadas e proteção dos interesses nacionais."),

                    Proposal(number: "8.",text: "Preservação dos Valores Tradicionais: Promoção da cultura e história portuguesas."),

                    Proposal(number: "9.",text: "Reforço da Coesão Social: Combate à pobreza e exclusão social através de programas de apoio."),

                    Proposal(number: "10.",text: "Política Externa Pragmática: Parcerias internacionais baseadas nos interesses nacionais e no respeito pelos direitos humanos."),



                    GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('http://www.cds.pt/');
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

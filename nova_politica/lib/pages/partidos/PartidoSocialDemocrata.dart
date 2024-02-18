import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:nova_politica/pages/globals.dart';

import '../PoliticalPartiesPage.dart';
const Color MAIN_COLOR = Color.fromARGB(255,240,135,17);

class PSD extends StatelessWidget {
  const PSD({super .key});

@override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MAIN_COLOR,
        title: Center(child: Text('Partido Social Democrata', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
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
              image: DecorationImage(     //  ### BANNER ###
                image: NetworkImage('https://pbs.twimg.com/profile_banners/20560841/1705868233/1080x360'), // Path to your banner image
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
                          'Partido Social Democrata',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'PSD',
                          style: TextStyle(fontSize: 30, color: MAIN_COLOR),
                        ),),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(child: Container(
                      width: 800,
                      child:Text(
                      'O Partido Social Democrata (PSD) é um dos principais partidos políticos de Portugal, fundado em 1974 após a Revolução dos Cravos. Posiciona-se no centro-direita do espectro político, defendendo princípios sociais-democratas e políticas econômicas de mercado com uma forte intervenção estatal. Historicamente, o PSD tem alternado no poder com o Partido Socialista (PS), sendo um dos partidos mais influentes na política portuguesa. Seu programa inclui a promoção do desenvolvimento econômico, o reforço do Estado de bem-estar social, a defesa dos valores tradicionais e o compromisso com a União Europeia. Liderado por uma direção nacional eleita democraticamente, o PSD tem desempenhado um papel significativo na governança e na formulação de políticas do país.',
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

                    Proposal(number: "1.",text: "Crescimento Econômico Sustentável: Estímulo ao empreendedorismo e investimento, visando criar empregos e promover a prosperidade."),

                    Proposal(number: "2.",text: "Modernização do Sistema de Saúde: Melhoria da eficiência, infraestrutura e acesso aos cuidados de saúde para todos os cidadãos."),

                    Proposal(number: "3.",text: "Reforma Fiscal Justa: Simplificação do sistema tributário, redução de impostos para famílias e empresas."),

                    Proposal(number: "4.",text: "Educação de Qualidade: Investimento na formação de professores e modernização das escolas para garantir educação de excelência."),

                    Proposal(number: "5.",text: "Segurança Pública Eficiente: Reforço das forças policiais e medidas de prevenção para combater a criminalidade."),

                    Proposal(number: "6.",text: "Proteção do Ambiente: Implementação de políticas de conservação, reciclagem e redução da poluição."),

                    Proposal(number: "7.",text: "Apoio às Famílias: Incentivos fiscais para a natalidade, creches acessíveis e medidas de conciliação trabalho-família."),

                    Proposal(number: "8.",text: "Descentralização Administrativa: Fortalecimento dos municípios e das regiões para uma governança mais próxima dos cidadãos."),

                    Proposal(number: "9.",text: "Promoção da Inovação Tecnológica: Incentivo à pesquisa e desenvolvimento, com foco em tecnologias emergentes."),

                    Proposal(number: "10.",text: "Defesa dos Valores Tradicionais: Proteção da cultura, identidade nacional e valores morais na sociedade portuguesa."),



                    GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://www.psd.pt/');
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

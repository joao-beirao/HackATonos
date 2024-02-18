import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nova_politica/pages/GuidePage.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/QuizPage.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:nova_politica/pages/globals.dart';

import '../PoliticalPartiesPage.dart';
const Color MAIN_COLOR = Color.fromARGB(255,11,174,85);

class PAN extends StatelessWidget {
  const PAN({super .key});

@override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: MAIN_COLOR,
        title: Center(child: Text('Pessoas Animais Natureza ', style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold))),
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
                image: NetworkImage('https://pbs.twimg.com/profile_banners/51714305/1707568899/1080x360'), // Path to your banner image
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
                          'Pessoas Animais Natureza',
                          style: TextStyle(fontSize: 40),
                        ),),
                      ),
                    ),
                    Center(child: Container(
                        width: 800,
                        child:Center(child:Text(
                          'PAN',
                          style: TextStyle(fontSize: 30, color: MAIN_COLOR),
                        ),),
                      ),
                    ),

                    SizedBox(height: 40),

                    Center(child: Container(
                      width: 800,
                      child:Text(
                      'O Partido Pessoas-Animais-Natureza (PAN) é uma força política portuguesa fundada em 2009, com uma plataforma baseada na defesa dos direitos dos animais, proteção do meio ambiente e promoção do bem-estar humano. Considerado um partido de centro-esquerda, o PAN busca equilibrar as necessidades sociais, ambientais e econômicas através de políticas progressistas. Com uma abordagem inovadora, o PAN tem ganhado relevância no panorama político português, especialmente em questões relacionadas à sustentabilidade, proteção animal e justiça social.',
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

                    Proposal(number: "1.",text: "Bem-estar Animal: Reforço das leis de proteção animal, combate ao abandono e maus-tratos, e promoção da adoção responsável."),

                    Proposal(number: "2.",text: "Sustentabilidade Ambiental: Investimento em energias renováveis, proteção de ecossistemas naturais e redução do uso de plásticos."),

                    Proposal(number: "3.",text: "Educação Ambiental nas Escolas: Integração de programas de sensibilização ambiental no currículo escolar."),

                    Proposal(number: "4.",text: "Alimentação Sustentável: Promoção de dietas mais saudáveis e sustentáveis, incentivando o consumo de alimentos locais e orgânicos."),

                    Proposal(number: "5.",text: "Transporte Público Eficiente: Expansão da rede de transporte público e incentivos para a utilização de meios de transporte menos poluentes."),

                    Proposal(number: "6.",text: "Justiça Social: Implementação de políticas de combate à pobreza e exclusão social, garantindo igualdade de oportunidades para todos."),

                    Proposal(number: "7.",text: "Saúde Preventiva: Promoção de hábitos saudáveis e acesso facilitado a serviços de saúde preventiva."),

                    Proposal(number: "8.",text: "Transparência na Política: Medidas para aumentar a transparência e a responsabilidade na gestão pública."),

                    Proposal(number: "9.",text: "Direitos LGBT+: Defesa dos direitos e igualdade de tratamento para pessoas LGBT+."),

                    Proposal(number: "10.",text: "Democracia Participativa: Incentivo à participação cidadã e à consulta pública em decisões políticas importantes."),



                    GestureDetector(
                      onTap: () {
                        // INSERIR LINK UP
                        _launchURL('https://www.pan.com.pt/');
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

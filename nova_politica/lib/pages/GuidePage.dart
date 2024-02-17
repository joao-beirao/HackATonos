import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ContactPage.dart';
import 'AboutPage.dart';

class MyGuide extends StatelessWidget {
  const MyGuide({super.key});

  @override
  Widget build(BuildContext context) {

    TextStyle customTextStyle = GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              backgroundColor: Colors.orange.withOpacity(0.7),
              title: Center(
                  child: Text('Guia para Iniciantes',
                      style: GoogleFonts.lobster(
                          textStyle: const TextStyle(fontSize: 40)))),
            ),
            body: Center(child:Container(
              width: 800,
              child:ListView(children: [
              Container(
                height: 100,
                
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Esquerda e Direita??',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 5.0, 80.0, 0.0), child: RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: 'Esquerda: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Tradicionalmente associada a ideias progressistas, políticas sociais mais amplas e maior intervenção do governo na economia para promover igualdade e justiça social. Exemplos incluem o apoio aos direitos das minorias, programas de bem-estar social e regulação econômica mais forte.',
                ),
              ],
              style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            ),)),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), child: RichText(
            text: TextSpan(
              children: const [
                TextSpan(
                  text: 'Direita: ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Em contraste, a direita geralmente defende ideias conservadoras, menos intervenção do governo na economia e uma ênfase maior em liberdades individuais e no livre mercado. Costuma apoiar políticas que fortalecem a iniciativa privada e reduzem a intervenção governamental na vida das pessoas.',
                ),
              ],
              style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            ),)),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Socialismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Um sistema político e econômico que busca a propriedade coletiva ou estatal dos meios de produção e distribuição de recursos. O socialismo visa a igualdade econômica e social, muitas vezes por meio de políticas de redistribuição de riqueza e programas sociais abrangentes. Pode variar de formas mais moderadas, como o socialismo democrático, a formas mais radicais, como o socialismo revolucionário.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Comunismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia que busca a eliminação das classes sociais e do Estado, visando uma sociedade sem propriedade privada, onde os meios de produção são de propriedade comum e a distribuição de bens é baseada nas necessidades de cada indivíduo. Embora tenha sido implementado em várias nações ao longo da história, a aplicação prática do comunismo muitas vezes envolveu regimes autoritários e centralizados.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Capitalismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Um sistema econômico baseado na propriedade privada dos meios de produção e na alocação de recursos pelo mercado, com pouca intervenção do governo. No capitalismo, a busca pelo lucro e a competição são os principais motores da economia. Pode variar de formas mais reguladas, como o capitalismo de bem-estar social, a formas mais livres, como o capitalismo laissez-faire.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Democracia:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Um sistema de governo no qual o poder político é exercido pelo povo, seja diretamente ou por meio de representantes eleitos. A democracia geralmente envolve eleições livres e justas, separação de poderes, estado de direito e proteção dos direitos individuais e das liberdades civis.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Totalitarismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma forma extrema de governo em que o Estado exerce controle total sobre a vida pública e privada dos cidadãos, geralmente restringindo severamente as liberdades individuais e políticas, e suprimindo qualquer forma de oposição. Exemplos históricos incluem regimes como o nazismo na Alemanha e o stalinismo na União Soviética.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Liberalismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 100,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia que enfatiza a liberdade individual, a igualdade de oportunidades e a proteção dos direitos civis e políticos. Os liberais geralmente apoiam economias de mercado, direitos individuais, estado de direito e democracia representativa.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Conservadorismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia que valoriza a tradição, a estabilidade social e a autoridade institucional. Os conservadores tendem a defender valores tradicionais, como a família, a religião e a ordem social hierárquica. No aspecto econômico, os conservadores geralmente apoiam políticas que promovem o livre mercado e reduzem a intervenção do governo na economia.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fascismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia política caracterizada por um autoritarismo extremo, nacionalismo radical, supressão de dissidência política e crença na supremacia de um estado forte liderado por um líder carismático. O fascismo geralmente promove valores de exclusividade étnica ou nacional, militarismo e centralização do poder estatal.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Anarquismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia política que busca a abolição do Estado e de outras instituições hierárquicas, defendendo a auto-organização da sociedade com base na cooperação voluntária e na descentralização do poder. Os anarquistas frequentemente defendem a propriedade comum dos meios de produção e uma sociedade baseada na solidariedade e na autonomia individual.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Nacionalismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 250,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia que enfatiza a identidade nacional, a lealdade ao Estado-nação e a defesa dos interesses nacionais. O nacionalismo pode variar de formas moderadas, que buscam promover a coesão social e a autonomia nacional, a formas mais extremas, que promovem a exclusão de grupos étnicos ou religiosos considerados estrangeiros ou inferiores.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),
            Container(
                height: 100,
                margin: const EdgeInsets.fromLTRB(40.0, 5.0, 0.0, 0.0), child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Globalismo:',
                  style: GoogleFonts.exo2(
                      textStyle: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  textAlign: TextAlign.center,
                ),
              )
            ),
            Container(
            height: 300,
            width: 200,
            margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0), 
            child: Text('Uma ideologia que promove a cooperação internacional, a integração econômica e política entre os países e a interdependência global. Os globalistas tendem a apoiar instituições internacionais, como a ONU e a UE, e políticas que visam resolver problemas globais, como mudanças climáticas, comércio internacional e direitos humanos.', 
            style: GoogleFonts.signikaNegative(textStyle: const TextStyle(fontSize: 25)),
            )),

            ]
             )
            )
            ),
            bottomNavigationBar: BottomAppBar(
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
                  )),
              
            ));
  }
}

import 'package:flutter/material.dart';
import 'package:nova_politica/pages/PartidoSocialista.dart';
import 'package:nova_politica/pages/partidos/PartidoSocialista.dart';

class MyPartiesApp extends StatelessWidget {
  const MyPartiesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Partidos Políticos',
      home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 100,
            backgroundColor: Colors.indigo,
            title: const Text('Partidos Políticos'),
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
                            builder: (_) => const PartidoSocialista(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208387005566951435/PAN.jpg?ex=65e31918&is=65d0a418&hm=0747f482ce3f489c7f0f99c1c26891c1e694b2d01d76a24ed45d4790c9a9ce91&'),
                    ),
                    ),
                    Text('PESSOAS – ANIMAIS – NATUREZA'),
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
                            builder: (_) => const PartidoSocialista(),
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
                            builder: (_) => const PartidoSocialista(),
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
                            builder: (_) => const PartidoSocialista(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://cdn.discordapp.com/attachments/1208282567002820609/1208386670010040340/L.png?ex=65e318c8&is=65d0a3c8&hm=42cb21e16a6cee53fdec0624166165e9c0b7d4d049de9200fdc6b419d0da4d5f&'),
                    ),
                    ),
                    Text('LIVRE'),
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
                            builder: (_) => const PartidoSocialista(),
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
                            builder: (_) => const PartidoSocialista(),
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
                            builder: (_) => const PartidoSocialista(),
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
                            builder: (_) => const PartidoSocialista(),
                          ),
                        );
                      },
                    child: CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/pt/c/c4/S%C3%ADmbolo_principal_do_CHEGA.png'),
                    ),
                    ),
                    Text('CHEGA'),
                    Text('CH')
                  ],
                ),
              ])),
            ],
          )])),
    );
  }
}

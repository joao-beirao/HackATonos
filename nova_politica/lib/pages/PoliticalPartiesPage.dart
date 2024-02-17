import 'package:flutter/material.dart';

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
          body: ListView(children: const [Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(25.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://media.discordapp.net/attachments/1207684391283982357/1208349881081663538/th.png?ex=65e2f685&is=65d08185&hm=34c1cbd657d1c88bc5f00fd07fc3fcb2c105debaf56078a0a7a7c61fa27341dc&=&format=webp&quality=lossless&width=305&height=213'),
                    ),
                    Text('PESSOAS – ANIMAIS – NATUREZA'),
                    Text('PAN')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://th.bing.com/th/id/OIP.eDrWrIKIgvwJfzc5cYUnwAHaHa?rs=1&pid=ImgDetMain'),
                    ),
                    Text('Coligação Democrática Unitária'),
                    Text('CDU')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://www.cne.pt/sites/default/files/partido14_0.png'),
                    ),
                    Text('Bloco de Esquerda'),
                    Text('BE')
                  ],
                ),
              ])),
              Padding(padding: EdgeInsets.all(25.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage('https://media.discordapp.net/attachments/1207684391283982357/1208350671833927740/Partido_LIVRE_Flag.png?ex=65e2f742&is=65d08242&hm=780798ef4a0ac1f431d84fb561cfc8fb419f3a7f842b2a8f03963a36108ba51f&=&format=webp&quality=lossless&width=1005&height=670'),
                    ),
                    Text('LIVRE'),
                    Text('L')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage(''),
                    ),
                    Text('Partido Socialista'),
                    Text('PS')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage(''),
                    ),
                    Text('Partido Social Democrata'),
                    Text('PSD')
                  ],
                ),
              ])),
              Padding(padding: EdgeInsets.all(25.0), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage(''),
                    ),
                    Text('Iniciativa Liberal'),
                    Text('IL')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage(''),
                    ),
                    Text('CDS - Partido Popular'),
                    Text('CDS-PP')
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 150,
                      backgroundImage: NetworkImage(''),
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

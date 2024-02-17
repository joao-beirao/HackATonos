import 'package:flutter/material.dart';

class PS extends StatelessWidget {
  const PS({super .key});


@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner Page'),
      ),
      body: Column(
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
          Row(
            children: [
              // Padding for the circular image to move it to the right
              Padding(
                padding: EdgeInsets.only(left: 20), // Adjust left padding as needed
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('assets/left_image.jpg'), // Path to your circular image
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              // Text widget
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // First text
                  Text(
                    'Partido Socialista',
                    style: TextStyle(fontSize: 18),
                  ),
                  // Second text
                  Text(
                    'As raízes ideológicas do Partido Socialista e do seu Grupo Parlamentar na Assembleia da República estão indissoluvelmente ligadas ao ideal do socialismo democrático, desenvolvido em meados da segunda metade do século XIX. O Grupo Parlamentar do Partido Socialista empenha-se na construção de uma sociedade livre, igual e solidária, aberta à diversidade, à iniciativa, à inovação e ao progresso.',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }




/*
  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Partido Socialista", style:TextStyle(height:13.0,fontSize:20.0))
      ),
      body: Column(
    children: [
      Center(
        child: Expanded(
          child: Container(
          width: 800.0,
          height: 200.0,
          color: Colors.grey,
          child: Image.network('https://upload.wikimedia.org/wikipedia/pt/c/ce/Partido_Socialista_%28Portugal%29.png', height: 150.0, width: 150.0,),
        )),
      ),
      
      const SizedBox(height: 10),
      Center(
        child: Container(
          color: Colors.grey,
          height: 200.0,
          width: 800.0,
          child: const Text(
            "As raízes ideológicas do Partido Socialista e do seu Grupo Parlamentar na Assembleia da República estão indissoluvelmente ligadas ao ideal do socialismo democrático, desenvolvido em meados da segunda metade do século XIX. O Grupo Parlamentar do Partido Socialista empenha-se na construção de uma sociedade livre, igual e solidária, aberta à diversidade, à iniciativa, à inovação e ao progresso.",
            style: TextStyle(height:1.0),
          ),
        ),
      ),
      //Center(child: Image.network('https://upload.wikimedia.org/wikipedia/pt/c/ce/Partido_Socialista_%28Portugal%29.png')),
      
      ],
    )
    );
  }*/
}

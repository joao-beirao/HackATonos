import 'package:flutter/material.dart';

class PS extends StatelessWidget {
  const PS({super .key});

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
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      //Center(child: Image.network('https://upload.wikimedia.org/wikipedia/pt/c/ce/Partido_Socialista_%28Portugal%29.png')),
      
      ],
    )
    );
  }
}

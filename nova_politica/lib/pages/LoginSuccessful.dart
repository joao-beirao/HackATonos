import 'package:flutter/material.dart';
import 'HomePage.dart';

class LoginSuccessful extends StatelessWidget {
  const LoginSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Center(
          child: Container(
            width: 800,
            child: ListView(children: [
              Container(
                  height: 100,
                  margin: const EdgeInsets.fromLTRB(80.0, 100.0, 80.0, 0.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Autentificação Bem Sucedida!',
                      style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )),

              Container(
                  height: 250,
                  width: 200,
                  margin: const EdgeInsets.fromLTRB(80.0, 0.0, 80.0, 0.0),
                  child: Image.network(
                      'https://media.discordapp.net/attachments/1171195359947657278/1208485478760976384/Pinguim_Politico.png?ex=65e374ce&is=65d0ffce&hm=be0de54d36bc75e78432e5694b0280035ce30fcb6cee83e02474156d6d863397&=&format=webp&quality=lossless&width=662&height=662')),
              Container(
                  child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const MyHomePage(
                        title: 'Nova Política',
                      ),
                    ),
                  );
                },
                child: const Text('Ir para a Página Principal',
                    style: TextStyle(fontSize: 30.0, color: Colors.black)),
              ))
            ]),
          ),
        )));
  }
}

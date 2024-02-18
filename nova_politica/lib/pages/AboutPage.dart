import 'package:flutter/material.dart';

void main() {
  runApp(const MyAboutPage());
}

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sobre Nós',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.red,
          title: const Text('Sobre Nós'), 
          ),
          body: Column(children: [
            SizedBox(
                height: 24,
            ),
            const Text(
            'A plataforma Nova Política apresenta o mundo político português de uma forma simples, intuitiva e agradável, tornando passar a perceber de política um processo rápido. Não aceitamos doações porque somos extremamente humildes, o prémio de primeiro lugar do HackaThon é pagamento que chegue.',
            style: (TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              decoration: TextDecoration.none,)),
            textAlign: TextAlign.center,
          ),
          ]
      )
    ));
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(const MyAboutPage());
}

class MyAboutPage extends StatelessWidget {
  const MyAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sobre Nós',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Sobre Nós'), 
          ),
      )
    );
  }
}
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
      )
    );
  }
}
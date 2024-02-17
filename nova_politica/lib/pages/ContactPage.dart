import 'package:flutter/material.dart';

void main() {
  runApp(const MyContactPage());
}

class MyContactPage extends StatelessWidget {
  const MyContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contactos',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.green,
          title: const Text('Contactos'), 
          ),
      )
    );
  }
}
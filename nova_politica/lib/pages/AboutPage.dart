import 'package:flutter/material.dart';
import 'package:nova_politica/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Us',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('About Us'), ),
      )
    );
  }
}
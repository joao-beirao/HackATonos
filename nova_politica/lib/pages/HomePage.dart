import 'package:flutter/material.dart';
import 'package:nova_politica/pages/AboutPage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Nova Politica',
      home: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ElevatedButton(
        child: Text('About'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => MyApp(),
              ),
          );
        },
      ),
    )
    );
  }

  
}
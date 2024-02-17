import 'package:flutter/material.dart';

void main() {
  runApp(const MyContactPage());
}

class MyContactPage extends StatelessWidget {
  const MyContactPage({super.key});

 @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffffd460),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                  radius: 70, backgroundImage: AssetImage('')),
              Text(
                'Bruno Duarte',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    color: Color(0xfff07b3f),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'bd.duarte@campus.fct.unl.pt',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    letterSpacing: 2.5,
                    color: Color(0xfff07b3f),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                    ),
              ),
              SizedBox(
               height: 20,
                width: 150,
                child: Divider(
                  color: Color(0xfff07b3f),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
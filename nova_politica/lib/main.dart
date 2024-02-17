import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/registration.dart';
import 'firebase_options.dart'; // Make sure you have correct import path
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth package

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Create an instance of Future<FirebaseApp> to hold the Firebase initialization
  final Future<FirebaseApp> _initialization = Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  @override
  Widget build(BuildContext context) {
    // Use a FutureBuilder to handle the asynchronous initialization
    return FutureBuilder(
      // Pass the initialization Future to the future parameter
      future: _initialization,
      builder: (context, snapshot) {
        // Check if initialization has completed
        if (snapshot.connectionState == ConnectionState.done) {
          // If initialization is complete, return MaterialApp with the home page
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: '/', // Set the initial route to '/'
            routes: {
              '/': (context) => MyHomePage(title: 'Nova Política'), // Define the '/' route to your home page
              '/register': (context) => RegistrationScreen(), // Define the '/register' route to your registration screen
              '/home': (context) => MyHomePage(title: 'Nova Política',), // Define the '/home' route to your home page
              // Add other routes as needed
            },
          );
        }
        // If initialization is not complete, return a loading indicator
        return CircularProgressIndicator();
      },
    );
  }
}

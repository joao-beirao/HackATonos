import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nova_politica/pages/LoginSuccessful.dart';
import 'globals.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final VoidCallback onLoginSuccess;

  LoginScreen({required this.onLoginSuccess});

  Future<void> signInWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // User signed in successfully, notify the callback function
      onLoginSuccess();
      userEmail = emailController.text;
      // Navigate back to the previous screen
      Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => LoginSuccessful(),
      ),
    );
    } catch (e) {
      // Show a pop-up dialog with the error message
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('Wrong email or password.'),
            actions: <Widget>[
              TextButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                ),
                SizedBox(height: 16), // Added spacing below email field
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                SizedBox(height: 16), // Added spacing below password field
                ElevatedButton(
                  onPressed: () {
                    signInWithEmailAndPassword(context);
                  },
                  child: const Text('Log In'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

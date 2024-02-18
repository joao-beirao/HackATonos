import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nova_politica/main.dart';
import 'package:nova_politica/pages/HomePage.dart';
import 'package:nova_politica/pages/SuccessfulRegister.dart';

class RegistrationScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegistrationScreen({super.key});

  Future<void> registerWithEmailAndPassword(BuildContext context) async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      // User registered successfully, navigate to the next screen
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, '/home');
    } catch (e) {
      // Show an error message if registration fails
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to register: $e')),
      );
    }
  }

void validateAndRegister(BuildContext context) {
  String email = emailController.text.trim();
  String password = passwordController.text;

  // Email validation
  if (!isValidEmail(email)) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid Email'),
          content: Text('Please insert a valid email address.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
    return;
  }

  // Password validation
  if (password.length < 6) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Invalid Password'),
          content: Text('The password must be at least 6 characters long.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
    return;
  }

  // If both email and password are valid, proceed with registration
  register(context);
}

void register(BuildContext context) async {
  try {
    UserCredential userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    // User registered successfully, navigate to the successful registration screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (_) => MySuccessfulRegist(),
      ),
    );
  } catch (e) {
    // Show an error message if registration fails
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Failed to register: $e')),
    );
  }
}


  bool isValidEmail(String email) {
    // Basic email validation using a regular expression
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
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
                  controller: passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                ),
                SizedBox(height: 16), // Added spacing below password field
                ElevatedButton(
                  onPressed: () {
                    validateAndRegister(context);
                  },
                  child: const Text('Register'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

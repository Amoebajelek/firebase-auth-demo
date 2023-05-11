import 'package:firebase_auth_demo/auth_service.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Hello, Google Sign In',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                AuthService().signInWithGoogle();
              },
              child: const Image(
                image: AssetImage('assets/google-logo.png'),
                width: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}

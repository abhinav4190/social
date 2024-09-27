import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
   static const routeName = '/auth-screen';
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Auth Screen', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}
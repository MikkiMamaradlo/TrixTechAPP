import 'package:flutter/material.dart';
import 'pages/login.dart';

void main() {
  runApp(const TrixTechApp());
}

class TrixTechApp extends StatelessWidget {
  const TrixTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrixTech',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}


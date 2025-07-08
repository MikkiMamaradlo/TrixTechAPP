import 'package:flutter/material.dart';
import 'pages/login.dart';
import 'pages/dashboard.dart';

void main() {
  runApp(const TrixTechApp());
}

class TrixTechApp extends StatelessWidget {
  const TrixTechApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TrixTech',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/Dashboard': (context) => const DashboardPage(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

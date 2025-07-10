import 'package:flutter/material.dart';
import 'auth/login.dart';
import 'routes/dashboard.dart';
import 'auth/order_screen.dart';

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
        '/Orders': (context) => const OrderScreen(), // ✅ properly inside MaterialApp
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

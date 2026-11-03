// lib/main.dart
import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const PizzaHunterApp());
}

class PizzaHunterApp extends StatelessWidget {
  const PizzaHunterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza Hunter',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {'/': (context) => const HomePage()},
    );
  }
}

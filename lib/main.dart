import 'package:flutter/material.dart';

import 'homePage.dart';

void main() {
  runApp(const PizzaHunterApp());
}

class PizzaHunterApp extends StatelessWidget {
  const PizzaHunterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Hunter',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
      routes: {'/menu': (context) => const HomePage()},
    );
  }
}

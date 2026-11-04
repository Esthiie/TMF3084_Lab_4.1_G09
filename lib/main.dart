import 'package:flutter/material.dart';

import 'aboutpage.dart';
import 'facebookpage.dart';
import 'homepage.dart';
import 'menupage.dart';
import 'twitterpage.dart';

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
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/menu': (context) => const MenuPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const AboutPage(),
        '/twitter': (context) => const TwitterPage(),
        '/facebook': (context) => const FacebookPage(),
      },
    );
  }
}

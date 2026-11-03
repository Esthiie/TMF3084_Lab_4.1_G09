// lib/homePage.dart
import 'package:flutter/material.dart';

import 'aboutpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Row(
          children: [
            const Text(
              ' Pizza Hunter',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            // Twitter Logo -> Links to AboutPage
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              child: Image.asset(
                'assets/images/twitter.jpg',
                fit: BoxFit.contain,
                height: 30,
              ),
            ),
            const SizedBox(width: 10.0),
            // Facebook Logo -> Links to AboutPage
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
              child: Image.asset(
                'assets/images/fblogo.png',
                fit: BoxFit.contain,
                height: 40,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          // Horizontal Menu Navigation Buttons leading to MenuPage
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: const Text(
                    'Main Page',
                    style: TextStyle(fontSize: 20.0, color: Colors.orange),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: const Text(
                    'Menu Page',
                    style: TextStyle(fontSize: 20.0, color: Colors.orange),
                  ),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side: const BorderSide(color: Colors.red),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  child: const Text(
                    'About Us',
                    style: TextStyle(fontSize: 20.0, color: Colors.orange),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          // Main Image and Assistant Text Section
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/pizzacheese.png',
                    height: 300.0,
                    width: 300.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Hi, I'm the Pizza Assistant,\nwhat can I help you order?",
                    style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

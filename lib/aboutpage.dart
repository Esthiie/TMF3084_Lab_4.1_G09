import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABOUT PAGE'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),


      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 30),

              // App Logo
              Container(
                width: 400,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Image.asset(
                  'images/Chef.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              // App Name
              const Text(
                'PIZZA NAME',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const SizedBox(height: 30),

              const SizedBox(height: 10),

              const Text(
                'We create delicious pizza that entices the whole world! '
                'In collaboration with the local farmers, we deliver fresh pizzas.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Image.asset(
                  'images/TomatoPizza.jpg',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 30),

              const Divider(),

              const ListTile(
                leading: Icon(Icons.email),
                title: Text('Email'),
                subtitle: Text('WowPizza@gmail.com'),
              ),

              const ListTile(
                leading: Icon(Icons.calendar_today),
                title: Text('Release Date'),
                subtitle: Text('2026'),
              ),

              const Divider(),

              const SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}

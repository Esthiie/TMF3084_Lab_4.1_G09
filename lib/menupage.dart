import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  static const pizzas = [
    {
      'name': 'Margherita Pizza',
      'ingredients': 'Tomato sauce, mozzarella, fresh basil',
      'price': 'RM 8.99',
      'img': 'assets/images/margherita.png'
    },
    {
      'name': 'Pepperoni Pizza',
      'ingredients': 'Pepperoni, mozzarella, tomato sauce',
      'price': 'RM 10.99',
      'img': 'assets/images/pepperoni.png'
    },
    {
      'name': 'BBQ Chicken Pizza',
      'ingredients': 'Grilled chicken, BBQ sauce, onion, mozzarella',
      'price': 'RM 11.99',
      'img': 'assets/images/bbq_chicken.png'
    },
    {
      'name': 'Hawaiian Pizza',
      'ingredients': 'Ham, pineapple, mozzarella',
      'price': 'RM 10.99',
      'img': 'assets/images/hawaiian.png'
    },
    {
      'name': 'Meat Lover Pizza',
      'ingredients': 'Pepperoni, beef, sausage, bacon',
      'price': 'RM 12.99',
      'img': 'assets/images/meat_lover.png'
    },
    {
      'name': 'Seafood Pizza',
      'ingredients': 'Prawns, squid, mussels, mozzarella',
      'price': 'RM 13.99',
      'img': 'assets/images/seafood.png'
    },
    {
      'name': 'Veggie Supreme Pizza',
      'ingredients': 'Capsicum, mushroom, olives, onion, sweet corn',
      'price': 'RM 9.99',
      'img': 'assets/images/veggie_supreme.png'
    },
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Our Menu')),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                for (final p in pizzas)
                  ListTile(
                    isThreeLine: true,
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        p['img']!,
                        width: 64,
                        height: 64,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(
                      p['name']!,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 2),
                        Text(
                          p['ingredients']!,
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          p['price']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, '/', (route) => false),
              child: const Text('Back to Home'),
            ),
          ),
        ],
      ),
    );
  }
}
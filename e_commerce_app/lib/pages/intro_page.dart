import 'package:e_commerce_app/components/button.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          // LOGO
          Icon(
            Icons.shopping_bag, 
            size: 72, 
            color: Theme.of(context).colorScheme.inversePrimary,
          ),

          const SizedBox(height: 25),

          // TITLE
          const Text(
            "Minimal Shop",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            )
          ),

          const SizedBox(height: 25),

          // SUBTITLE
          Text(
            "Premium Quality Products",
            style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),

          const SizedBox(height: 25),

          // BUTTON
          MyButton(
            onTap: () => Navigator.pushNamed(context, '/shop_page'), 
            child: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  } 
}
